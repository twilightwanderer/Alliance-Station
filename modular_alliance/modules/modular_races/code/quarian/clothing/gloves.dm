/obj/item/clothing/gloves/color/modular_alliance/quarian
	name = "quarian shoes"
	desc = "The standard quarian shoes, which protects against bacteria and viruses of the external environment."
	icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/obj/gloves.dmi'
	worn_icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/mob/gloves.dmi'
	icon_state = "gloves"
	inhand_icon_state = "gloves"
	clothing_flags = STOPSPRESSUREDAMAGE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 100, FIRE = 50, ACID = 65)

/obj/item/clothing/gloves/color/modular_alliance/quarian/mob_can_equip(mob/M, mob/living/equipper, slot, disable_warning = FALSE, bypass_equip_delay_self = FALSE)
	if(!is_species(M, /datum/species/quarian))
		to_chat(M, span_warning("[src] is doesn't suit you!"))
		return FALSE
	return ..()

/obj/item/clothing/gloves/color/modular_alliance/quarian/pickup(mob/living/carbon/human/user)
	. = ..()
	if(is_species(user, /datum/species/quarian))
		if(!check_tightness_quarian(user))
			to_chat(user, span_warning("Breach of tightness of the suit!"))
			user.quarian_disease()

/obj/item/clothing/gloves/color/modular_alliance/quarian/dropped(mob/living/carbon/human/user, silent = FALSE)
	. = ..()
	if(is_species(user, /datum/species/quarian))
		if(!check_tightness_quarian(user))
			to_chat(user, span_warning("Breach of tightness of the suit!"))
			user.quarian_disease()


/obj/item/clothing/gloves/color/modular_alliance/quarian/equipped(mob/living/carbon/human/user, slot, initial = FALSE)
	. = ..()
	if(slot == ITEM_SLOT_GLOVES)
		if(check_tightness_quarian(user))
			to_chat(user, span_warning("Tightness is restored"))
