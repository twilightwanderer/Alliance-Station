#define ICON_TOOLS_PATH 'modular_alliance/modules/original_editing/icons/obj/tools.dmi'
#define ICON_LEFTHAND_TOOLS_PATH 'modular_alliance/modules/original_editing/icons/mob/inhands/equipment/tools_lefthand.dmi'
#define ICON_RIGHTHAND_TOOLS_PATH 'modular_alliance/modules/original_editing/icons/mob/inhands/equipment/tools_righthand.dmi'

/obj/item/crowbar/power
	icon = ICON_TOOLS_PATH
	lefthand_file = ICON_LEFTHAND_TOOLS_PATH
	righthand_file = ICON_RIGHTHAND_TOOLS_PATH

/obj/item/crowbar/power/syndicate
	inhand_icon_state = "jaws_syndie"

#undef ICON_TOOLS_PATH
#undef ICON_LEFTHAND_TOOLS_PATH
#undef ICON_RIGHTHAND_TOOLS_PATH
