#define ICON_TOOLS_PATH 'modular_alliance/modules/modular_outfit/icons/obj/tools.dmi'
#define ICON_LEFTHAND_TOOLS_PATH 'modular_alliance/modules/modular_outfit/icons/mob/inhands/equipment/tools_lefthand.dmi'
#define ICON_RIGHTHAND_TOOLS_PATH 'modular_alliance/modules/original_editing/icons/mob/inhands/equipment/tools_righthand.dmi'

/obj/item/crowbar/power/modular_alliance/medical
	name = "medical jaws of life"
	desc = "The medical version of the jaws of life set. Although these jaws are almost indistinguishable from standard jaws, they are not liked by paramedics."
	icon = ICON_TOOLS_PATH
	lefthand_file = ICON_LEFTHAND_TOOLS_PATH
	righthand_file = ICON_RIGHTHAND_TOOLS_PATH
	inhand_icon_state = "jaws_med"
	icon_state = "jaws_med"
	var/obj/item/radio/internal_radio
	var/radio_key = /obj/item/encryptionkey/headset_med

/obj/item/crowbar/power/modular_alliance/medical/Initialize(mapload)
	. = ..()
	internal_radio = new /obj/item/radio(src)
	if(radio_key)
		internal_radio.keyslot = new radio_key
		internal_radio.canhear_range = 0
		internal_radio.recalculateChannels()

/obj/item/crowbar/power/modular_alliance/medical/Destroy()
	. = ..()
	QDEL_NULL(internal_radio)

/obj/item/crowbar/power/modular_alliance/medical/emag_act(mob/user)
	if(!(obj_flags & EMAGGED))
		obj_flags |= EMAGGED
		to_chat(user, span_warning("Angry Poly inside those jaws cries out in pain."))

/obj/item/crowbar/power/modular_alliance/medical/proc/radio_report(mob/user)
	if(obj_flags != EMAGGED)
		var/message
		if(prob(50))
			message = "The use of jaws by user [user] in [get_area(user)] was recorded."
		else
			message = "The use of jaws by user [user] in [get_area(user)] was recorded. Poly wants a cracker."
		internal_radio.talk_into(src, "[message]", "Medical")

#undef ICON_TOOLS_PATH
#undef ICON_LEFTHAND_TOOLS_PATH
#undef ICON_RIGHTHAND_TOOLS_PATH
