/obj/item/clothing/gloves/color/modular_alliance/quarian
	name = "quarian shoes"
	desc = "The standard quarian shoes, which protects against bacteria and viruses of the external environment."
	icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/obj/gloves.dmi'
	worn_icon = 'modular_alliance/modules/modular_races/code/quarian/clothing/icons/mob/gloves.dmi'
	icon_state = "gloves"
	inhand_icon_state = "gloves"
	clothing_flags = STOPSPRESSUREDAMAGE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 100, FIRE = 50, ACID = 65)
	//Necessary for the definition of modular gloves.
	var/gloves_path = null

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

/obj/item/clothing/gloves/color/modular_alliance/quarian/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/clothing/gloves))
		if(gloves_path == null)
			modification_installation(I, user)
		else
			to_chat(user, "<span class='notice'>A modification is already installed in the gloves.</span>")
	if(I.tool_behaviour == TOOL_SCREWDRIVER)
		if(gloves_path != null)
			clothing_traits = list()
			icon_state = "gloves"
			new gloves_path(drop_location())
			gloves_path = null
			siemens_coefficient = 0.5

/obj/item/clothing/gloves/color/modular_alliance/quarian/proc/modification_installation(obj/item/clothing/gloves/I, mob/user)
	if(istype(I, /obj/item/clothing/gloves/color/yellow))
		gloves_path = I.type
		clothing_traits = list(TRAIT_CHUNKYFINGERS)
		siemens_coefficient = 0
		QDEL_NULL(I)
		icon_state = "yellow"
		to_chat(user, "<span class='notice'>A modification has been installed in the gloves</span>")
		return
	if(istype(I, /obj/item/clothing/gloves/botanic_leather))
		gloves_path = I.type
		clothing_traits = list(TRAIT_PLANT_SAFE)
		QDEL_NULL(I)
		icon_state = "leather"
		to_chat(user, "<span class='notice'>A modification has been installed in the gloves</span>")
		return
	if(istype(I, /obj/item/clothing/gloves/color/latex) && !istype(I, /obj/item/clothing/gloves/color/latex/engineering))
		gloves_path = I.type
		if (istype(I, /obj/item/clothing/gloves/color/latex/nitrile))
			clothing_traits = list(TRAIT_QUICKER_CARRY, TRAIT_FASTMED)
			icon_state = "nitrile"
		else
			clothing_traits = list(TRAIT_QUICK_CARRY, TRAIT_FINGERPRINT_PASSTHROUGH)
			icon_state = "latex"
		siemens_coefficient = 0.3
		QDEL_NULL(I)
		to_chat(user, "<span class='notice'>A modification has been installed in the gloves</span>")
		return
	if(istype(I, /obj/item/clothing/gloves/color/captain))
		gloves_path = I.type
		clothing_traits = list(TRAIT_PLANT_SAFE)
		siemens_coefficient = 0
		icon_state = "captain"
		QDEL_NULL(I)
		to_chat(user, "<span class='notice'>A modification has been installed in the gloves</span>")
		return
