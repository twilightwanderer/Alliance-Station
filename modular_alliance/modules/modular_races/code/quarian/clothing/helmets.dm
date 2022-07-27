/obj/item/clothing/head/helmet/space/modular_alliance/quarian
	name = "quarian helmet"
	desc = "The standard quarian helmet, which protects against bacteria and viruses of the external environment."
	icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/obj/helmets.dmi'
	worn_icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/mob/helmets.dmi'
	icon_state = "helmet-0-0"
	base_icon_state = "helmet"
	inhand_icon_state = "helmet-0-0"
	visor_vars_to_toggle = VISOR_FLASHPROTECT | VISOR_TINT
	var/welding_mask = FALSE
	var/welding_on = FALSE

	can_flashlight = FALSE
	var/flashlight_on = FALSE
	var/flashlight_path
	light_system = MOVABLE_LIGHT_DIRECTIONAL
	light_range = 4
	light_power = 0.8

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/mob_can_equip(mob/M, mob/living/equipper, slot, disable_warning = FALSE, bypass_equip_delay_self = FALSE)
	if(!is_species(M, /datum/species/quarian))
		to_chat(M, span_warning("[src] is doesn't suit you!"))
		return FALSE
	return ..()

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/pickup(mob/user)
	. = ..()
	if(is_species(user, /datum/species/quarian))
		if(!check_tightness_quarian(user))
			to_chat(user, span_warning("Breach of tightness of the suit!"))

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/dropped(mob/user, silent = FALSE)
	. = ..()
	if(is_species(user, /datum/species/quarian))
		if(!check_tightness_quarian(user))
			to_chat(user, span_warning("Breach of tightness of the suit!"))

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/equipped(mob/user, slot, initial = FALSE)
	. = ..()
	if(slot == ITEM_SLOT_HEAD)
		if(check_tightness_quarian(user))
			to_chat(user, span_warning("Tightness is restored"))

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/clothing/mask/gas/welding))
		if(welding_mask == FALSE)
			QDEL_NULL(I)
			welding_mask = TRUE
			to_chat(user, "<span class='notice'>You have installed a welding mask in [src].</span>")
		else
			to_chat(user, "<span class='notice'>The welding mask is already installed in [src].</span>")
		return
	if(istype(I, /obj/item/flashlight))
		if(can_flashlight == FALSE)
			flashlight_path = I.type
			QDEL_NULL(I)
			can_flashlight = TRUE
			to_chat(user, "<span class='notice'>You have installed a flashlight in [src].</span>")
		else
			to_chat(user, "<span class='notice'>The flashlight is already installed in [src].</span>")
		return
	if(I.tool_behaviour == TOOL_CROWBAR)
		if(welding_mask == TRUE)
			to_chat(user, "<span class='notice'>You have removed the welding mask from [src].</span>")
			new /obj/item/clothing/mask/gas/welding(drop_location())
			if(welding_on)
				toggle_welding_screen(user)
			welding_mask = FALSE
		return
	if(I.tool_behaviour == TOOL_SCREWDRIVER)
		if(can_flashlight == TRUE)
			to_chat(user, "<span class='notice'>You have removed the flashlight from [src].</span>")
			new flashlight_path(drop_location())
			if(flashlight_on)
				toggle_helmet_light(user)
			can_flashlight = FALSE
		return

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/CtrlClick(mob/user)
	toggle_helmet_light(user)

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/AltClick(mob/user)
	if(user.canUseTopic(src, BE_CLOSE))
		toggle_welding_screen(user)

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/proc/toggle_welding_screen(mob/living/user)
	if (welding_mask == TRUE)
		welding_on = !welding_on
		if(welding_on)
			tint = 2
		else
			tint = 0
		if(weldingvisortoggle(user))
			playsound(src, 'sound/mecha/mechmove03.ogg', 50, TRUE)
		update_appearance()

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/proc/toggle_helmet_light(mob/living/user)
	if (can_flashlight == TRUE)
		flashlight_on = !flashlight_on
		if(flashlight_on)
			set_light_on(TRUE)
		else
			set_light_on(FALSE)
		playsound(user, flashlight_on ? 'sound/weapons/magin.ogg' : 'sound/weapons/magout.ogg', 40, TRUE)
		update_appearance()

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/update_icon_state()
	icon_state = base_icon_state + "-[welding_on]-[flashlight_on]"
	return ..()

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/white
	name = "white quarian helmet"
	desc = "The standard white quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-white-0-0"
	inhand_icon_state = "helmet-white-0-0"
	base_icon_state = "helmet-white"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/black
	name = "black quarian helmet"
	desc = "The standard black quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-black-0-0"
	base_icon_state = "helmet-black"
	inhand_icon_state = "helmet-black-0-0"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/red
	name = "red quarian helmet"
	desc = "The standard red quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-red-0-0"
	base_icon_state = "helmet-red"
	inhand_icon_state = "helmet-red-0-0"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/orange
	name = "orange quarian helmet"
	desc = "The standard orange quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-orange-0-0"
	base_icon_state = "helmet-orange"
	inhand_icon_state = "helmet-orange-0-0"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow
	name = "yellow quarian helmet"
	desc = "The standard yellow quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-yellow-0-0"
	base_icon_state = "helmet-yellow"
	inhand_icon_state = "helmet-yellow-0-0"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/green
	name = "green quarian helmet"
	desc = "The standard green quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-green-0-0"
	base_icon_state = "helmet-green"
	inhand_icon_state = "helmet-green-0-0"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/blue
	name = "blue quarian helmet"
	desc = "The standard blue quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-blue-0-0"
	base_icon_state = "helmet-blue"
	inhand_icon_state = "helmet-blue-0-0"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet
	name = "violet quarian helmet"
	desc = "The standard violet quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-violet-0-0"
	base_icon_state = "helmet-violet"
	inhand_icon_state = "helmet-violet-0-0"
