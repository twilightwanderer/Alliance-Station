/obj/item/clothing/under/modular_alliance/quarian
	name = "quarian suit"
	desc = "The standard quarian suit, which protects against bacteria and viruses of the external environment."
	icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/obj/under.dmi'
	worn_icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/mob/under.dmi'
	icon_state = "suit"
	inhand_icon_state = "suit"
	can_adjust = FALSE
	female_sprite_flags = FEMALE_UNIFORM_NO_BREASTS

/obj/item/clothing/under/modular_alliance/quarian/mob_can_equip(mob/M, mob/living/equipper, slot, disable_warning = FALSE, bypass_equip_delay_self = FALSE)
	if(!is_species(M, /datum/species/quarian))
		to_chat(M, span_warning("[src] is doesn't suit you!"))
		return FALSE
	return ..()

/obj/item/clothing/under/modular_alliance/quarian/pickup(mob/user)
	. = ..()
	if(is_species(user, /datum/species/quarian))
		if(!check_tightness_quarian(user))
			to_chat(user, span_warning("Breach of tightness of the suit!"))

/obj/item/clothing/under/modular_alliance/quarian/dropped(mob/user, silent = FALSE)
	. = ..()
	if(is_species(user, /datum/species/quarian))
		if(!check_tightness_quarian(user))
			to_chat(user, span_warning("Breach of tightness of the suit!"))


/obj/item/clothing/under/modular_alliance/quarian/equipped(mob/user, slot, initial = FALSE)
	. = ..()
	if(slot == ITEM_SLOT_ICLOTHING)
		if(check_tightness_quarian(user))
			to_chat(user, span_warning("Tightness is restored"))

/obj/item/clothing/under/modular_alliance/quarian/white
	name = "white quarian suit"
	desc = "The standard white quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-white"
	inhand_icon_state = "suit-white"

/obj/item/clothing/under/modular_alliance/quarian/black
	name = "black quarian suit"
	desc = "The standard black quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-black"
	inhand_icon_state = "suit-black"

/obj/item/clothing/under/modular_alliance/quarian/red
	name = "red quarian suit"
	desc = "The standard red quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-red"
	inhand_icon_state = "suit-red"

/obj/item/clothing/under/modular_alliance/quarian/orange
	name = "orange quarian suit"
	desc = "The standard orange quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-orange"
	inhand_icon_state = "suit-orange"

/obj/item/clothing/under/modular_alliance/quarian/yellow
	name = "yellow quarian suit"
	desc = "The standard yellow quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-yellow"
	inhand_icon_state = "suit-yellow"

/obj/item/clothing/under/modular_alliance/quarian/green
	name = "green quarian suit"
	desc = "The standard green quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-green"
	inhand_icon_state = "suit-green"

/obj/item/clothing/under/modular_alliance/quarian/blue
	name = "blue quarian suit"
	desc = "The standard blue quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-blue"
	inhand_icon_state = "suit-blue"

/obj/item/clothing/under/modular_alliance/quarian/violet
	name = "violet quarian suit"
	desc = "The standard violet quarian suit, which protects against bacteria and viruses of the external environment."
	icon_state = "suit-violet"
	inhand_icon_state = "suit-violet"
