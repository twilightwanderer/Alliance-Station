/obj/item/clothing/head/helmet/space/modular_alliance/quarian
	name = "quarian helmet"
	desc = "The standard quarian helmet, which protects against bacteria and viruses of the external environment."
	icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/obj/helmets.dmi'
	worn_icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/mob/helmets.dmi'
	icon_state = "helmet"
	inhand_icon_state = "helmet"

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

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/white
	name = "white quarian helmet"
	desc = "The standard white quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-white"
	inhand_icon_state = "helmet-white"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/black
	name = "black quarian helmet"
	desc = "The standard black quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-black"
	inhand_icon_state = "helmet-black"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/red
	name = "red quarian helmet"
	desc = "The standard red quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-red"
	inhand_icon_state = "helmet-red"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/orange
	name = "orange quarian helmet"
	desc = "The standard orange quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-orange"
	inhand_icon_state = "helmet-orange"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow
	name = "yellow quarian helmet"
	desc = "The standard yellow quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-yellow"
	inhand_icon_state = "helmet-yellow"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/green
	name = "green quarian helmet"
	desc = "The standard green quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-green"
	inhand_icon_state = "helmet-green"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/blue
	name = "blue quarian helmet"
	desc = "The standard blue quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-blue"
	inhand_icon_state = "helmet-blue"

/obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet
	name = "violet quarian helmet"
	desc = "The standard violet quarian helmet, which protects against bacteria and viruses of the external environment."
	icon_state = "helmet-violet"
	inhand_icon_state = "helmet-violet"
