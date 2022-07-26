/obj/item/clothing/proc/check_tightness_quarian(mob/user)
	if(is_species(user, /datum/species/quarian))
		if(!istype(user.get_item_by_slot(ITEM_SLOT_HEAD), /obj/item/clothing/head/helmet/space/modular_alliance/quarian))
			return FALSE
		if(!istype(user.get_item_by_slot(ITEM_SLOT_ICLOTHING), /obj/item/clothing/under/modular_alliance/quarian))
			return FALSE
		if(!istype(user.get_item_by_slot(ITEM_SLOT_GLOVES), /obj/item/clothing/gloves/color/modular_alliance/quarian))
			return FALSE
		if(!istype(user.get_item_by_slot(ITEM_SLOT_FEET), /obj/item/clothing/shoes/modular_alliance/quarian))
			return FALSE
	return TRUE
