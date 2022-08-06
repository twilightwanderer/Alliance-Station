//The zero element is equivalent to gibtonite in some mechanics, so don't be surprised to see gibtonite mentioned in the code.
/obj/item/zero_element
	name = "zero element ore"
	desc = "Ore rich in zero element content. This element is extremely sensitive to any kind of mechanical impact and should therefore be handled with extreme care."
	icon = 'modular_alliance/modules/modular_objects/icons/obj/mining.dmi'
	lefthand_file = 'modular_alliance/modules/modular_objects/icons/mob/items_lefthand.dmi'
	righthand_file = 'modular_alliance/modules/modular_objects/icons/mob/items_righthand.dmi'
	icon_state = "zero_element"
	inhand_icon_state = "zero_element"
	w_class = WEIGHT_CLASS_BULKY
	throw_range = 0
	var/primed = FALSE
	var/det_time = 100
	var/quality = GIBTONITE_QUALITY_LOW
	var/attacher = "UNKNOWN"
	var/det_timer

/obj/item/gibtonite/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, require_twohands=TRUE)

/obj/item/zero_element/Destroy()
	qdel(wires)
	wires = null
	return ..()

/obj/item/zero_element/attackby(obj/item/I, mob/user, params)
	if(!wires && istype(I, /obj/item/assembly/igniter))
		user.visible_message(span_notice("[user] attaches [I] to [src]."), span_notice("You attach [I] to [src]."))
		wires = new /datum/wires/explosive/gibtonite(src)
		attacher = key_name(user)
		qdel(I)
		add_overlay("Gibtonite_igniter")
		return

	if(wires && !primed)
		if(is_wire_tool(I))
			wires.interact(user)
			return

	if(I.tool_behaviour == TOOL_MINING || istype(I, /obj/item/resonator) || I.force >= 10)
		reaction(user)
		return
	if(primed)
		if(istype(I, /obj/item/mining_scanner) || istype(I, /obj/item/t_scanner/adv_mining_scanner) || I.tool_behaviour == TOOL_MULTITOOL)
			primed = FALSE
			if(det_timer)
				deltimer(det_timer)
			user.visible_message(span_notice("The chain reaction stopped! ...The ore's quality looks diminished."), span_notice("You stopped the chain reaction. ...The ore's quality looks diminished."))
			icon_state = "zero_element"
			quality = GIBTONITE_QUALITY_LOW
			return
	..()

/obj/item/zero_element/attack_self(user)
	if(wires)
		wires.interact(user)
	else
		..()

/obj/item/zero_element/bullet_act(obj/projectile/P)
	reaction(P.firer)
	. = ..()

/obj/item/zero_element/ex_act()
	reaction(null, 1)

/obj/item/zero_element/proc/reaction(mob/user, triggered_by = 0)
	if(!primed)
		primed = TRUE
		playsound(src,'sound/effects/hit_on_shattered_glass.ogg',50,TRUE)
		icon_state = "zero_element_active"
		var/notify_admins = FALSE
		if(z != 5)//Only annoy the admins ingame if we're triggered off the mining zlevel
			notify_admins = TRUE

		if(triggered_by == 1)
			log_bomber(null, "An explosion has primed a", src, "for detonation", notify_admins)
		else if(triggered_by == 2)
			var/turf/bombturf = get_turf(src)
			if(notify_admins)
				message_admins("A signal has triggered a [name] to detonate at [ADMIN_VERBOSEJMP(bombturf)]. Igniter attacher: [ADMIN_LOOKUPFLW(attacher)]")
			var/bomb_message = "A signal has primed a [name] for detonation at [AREACOORD(bombturf)]. Igniter attacher: [key_name(attacher)]."
			log_game(bomb_message)
			GLOB.bombers += bomb_message
		else
			user.visible_message(span_warning("[user] strikes \the [src], causing a chain reaction!"), span_danger("You strike \the [src], causing a chain reaction."))
			log_bomber(user, "has primed a", src, "for detonation", notify_admins)
		det_timer = addtimer(CALLBACK(src, .proc/detonate, notify_admins), det_time, TIMER_STOPPABLE)

/obj/item/zero_element/proc/detonate(notify_admins)
	if(primed)
		switch(quality)
			if(GIBTONITE_QUALITY_HIGH)
				explosion(src, devastation_range = 2, heavy_impact_range = 4, light_impact_range = 9, adminlog = notify_admins)
			if(GIBTONITE_QUALITY_MEDIUM)
				explosion(src, devastation_range = 1, heavy_impact_range = 2, light_impact_range = 5, adminlog = notify_admins)
			if(GIBTONITE_QUALITY_LOW)
				explosion(src, heavy_impact_range = 1, light_impact_range = 3, adminlog = notify_admins)
		qdel(src)
