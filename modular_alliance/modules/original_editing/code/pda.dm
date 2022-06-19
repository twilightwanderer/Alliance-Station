/obj/item/modular_computer/tablet/pda/dropped(mob/user, silent = FALSE)
	. = ..()
	if (istype(user, /mob/living/carbon/human))
		if(!pda_in_inventory(user))
			take_languages(user)

/obj/item/modular_computer/tablet/pda/equipped(mob/user, slot, initial = FALSE)
	. = ..()
	if (istype(user, /mob/living/carbon/human))
		give_languages(user)

/obj/item/modular_computer/tablet/pda/proc/give_languages(mob/user)
	user.grant_all_languages(TRUE,FALSE)

/obj/item/modular_computer/tablet/pda/proc/take_languages(mob/user)
	for(var/language in GLOB.all_languages)
		if(!user.has_language(language, TRUE))
			user.remove_language(language)

/obj/item/modular_computer/tablet/pda/proc/pda_in_inventory(mob/user)
	for(var/content in user.contents)
		if(istype(content, /obj/item/modular_computer/tablet/pda))
			return TRUE
