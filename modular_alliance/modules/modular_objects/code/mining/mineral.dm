//The zero element is equivalent to gibtonite in some mechanics, so don't be surprised to see gibtonite mentioned in the code.
/turf/closed/mineral/alliance_modular/zero_element
	mineralAmt = 1
	scan_state = "rock_Zero"
	icon = 'modular_alliance/modules/modular_objects/icons/obj/mining.dmi'
	smooth_icon = 'modular_alliance/modules/modular_objects/icons/turf/smoothrocks.dmi'
	var/det_time = 8 //Countdown till explosion, but also rewards the player for how close you were to detonation when you defuse it
	var/stage = GIBTONITE_UNSTRUCK //How far into the lifecycle of gibtonite we are
	var/activated_ckey = null //These are to track who triggered the gibtonite deposit for logging purposes
	var/activated_name = null
	var/mutable_appearance/activated_overlay

/turf/closed/mineral/alliance_modular/zero_element/Initialize(mapload)
	det_time = rand(8,10) //So you don't know exactly when the hot potato will explode
	. = ..()

/turf/closed/mineral/alliance_modular/zero_element/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/mining_scanner) || istype(I, /obj/item/t_scanner/adv_mining_scanner) && stage == 1)
		user.visible_message(span_notice("[user] holds [I] to [src]..."), span_notice("You use [I] to locate where to cut off the chain reaction and attempt to stop it..."))
		defuse()
	..()

/turf/closed/mineral/alliance_modular/zero_element/proc/explosive_reaction(mob/user = null, triggered_by_explosion = 0)
	if(stage == GIBTONITE_UNSTRUCK)
		activated_overlay = mutable_appearance('modular_alliance/modules/modular_objects/icons/turf/smoothrocks.dmi', "rock_Zero_inactive", ON_EDGED_TURF_LAYER) //shows in gaps between pulses if there are any
		activated_overlay.plane = GAME_PLANE_UPPER
		add_overlay(activated_overlay)
		name = "zero element deposit"
		desc = "An active zero element reserve. Run!"
		stage = GIBTONITE_ACTIVE
		visible_message(span_danger("There's zero element inside! It's going to explode!"))

		var/notify_admins = !is_mining_level(z)

		if(!triggered_by_explosion)
			log_bomber(user, "has trigged a zero element deposit reaction via", src, null, notify_admins)
		else
			log_bomber(null, "An explosion has triggered a zero element deposit reaction via", src, null, notify_admins)

		countdown(notify_admins)

/turf/closed/mineral/alliance_modular/zero_element/proc/countdown(notify_admins = FALSE)
	set waitfor = FALSE
	while(istype(src, /turf/closed/mineral/alliance_modular/zero_element) && stage == GIBTONITE_ACTIVE && det_time > 0 && mineralAmt >= 1)
		flick_overlay_view(image('modular_alliance/modules/modular_objects/icons/turf/smoothrocks.dmi', src, "rock_Zero_active"), src, 5) //makes the animation pulse one time per tick
		det_time--
		sleep(5)
	if(istype(src, /turf/closed/mineral/alliance_modular/zero_element))
		if(stage == GIBTONITE_ACTIVE && det_time <= 0 && mineralAmt >= 1)
			var/turf/bombturf = get_turf(src)
			mineralAmt = 0
			stage = GIBTONITE_DETONATE
			explosion(bombturf, devastation_range = 1, heavy_impact_range = 3, light_impact_range = 5, adminlog = notify_admins, explosion_cause = src)

/turf/closed/mineral/alliance_modular/zero_element/proc/defuse()
	if(stage == GIBTONITE_ACTIVE)
		cut_overlay(activated_overlay)
		activated_overlay.icon_state = "rock_Zero_inactive"
		add_overlay(activated_overlay)
		desc = "An inactive gibtonite reserve. The ore can be extracted."
		stage = GIBTONITE_STABLE
		if(det_time < 0)
			det_time = 0
		visible_message(span_notice("The chain reaction stopped! The gibtonite had [det_time] reactions left till the explosion!"))

/turf/closed/mineral/alliance_modular/zero_element/gets_drilled(mob/user, give_exp = FALSE, triggered_by_explosion = FALSE)
	if(stage == GIBTONITE_UNSTRUCK && mineralAmt >= 1) //Gibtonite deposit is activated
		playsound(src,'sound/effects/hit_on_shattered_glass.ogg',50,TRUE)
		explosive_reaction(user, triggered_by_explosion)
		return
	if(stage == GIBTONITE_ACTIVE && mineralAmt >= 1) //Gibtonite deposit goes kaboom
		var/turf/bombturf = get_turf(src)
		mineralAmt = 0
		stage = GIBTONITE_DETONATE
		explosion(bombturf, devastation_range = 1, heavy_impact_range = 2, light_impact_range = 5, adminlog = FALSE, explosion_cause = src)
	if(stage == GIBTONITE_STABLE) //Gibtonite deposit is now benign and extractable. Depending on how close you were to it blowing up before defusing, you get better quality ore.
		var/obj/item/zero_element/G = new (src)
		if(det_time <= 0)
			G.quality = 3
			G.icon_state = "zero_element_3"
		if(det_time >= 1 && det_time <= 2)
			G.quality = 2
			G.icon_state = "zero_element_2"

	var/flags = NONE
	var/old_type = type
	if(defer_change) // TODO: make the defer change var a var for any changeturf flag
		flags = CHANGETURF_DEFER_CHANGE
	var/turf/open/mined = ScrapeAway(null, flags)
	addtimer(CALLBACK(src, .proc/AfterChange, flags, old_type), 1, TIMER_UNIQUE)
	mined.update_visuals()

/turf/closed/mineral/alliance_modular/zero_element/volcanic
	turf_type = /turf/open/misc/asteroid/basalt/lava_land_surface
	baseturfs = /turf/open/misc/asteroid/basalt/lava_land_surface
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	defer_change = TRUE

/turf/closed/mineral/alliance_modular/zero_element/ice
	icon_state = "icerock_Zero"
	smooth_icon = 'icons/turf/walls/icerock_wall.dmi'
	base_icon_state = "icerock_wall"
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_BORDER
	turf_type = /turf/open/misc/asteroid/snow/ice
	baseturfs = /turf/open/misc/asteroid/snow/ice
	initial_gas_mix = FROZEN_ATMOS
	defer_change = TRUE

/turf/closed/mineral/alliance_modular/zero_element/ice/icemoon
	turf_type = /turf/open/misc/asteroid/snow/ice/icemoon
	baseturfs = /turf/open/misc/asteroid/snow/ice/icemoon
	initial_gas_mix = ICEMOON_DEFAULT_ATMOS
