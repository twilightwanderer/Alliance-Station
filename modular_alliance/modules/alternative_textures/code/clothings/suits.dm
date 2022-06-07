#define ICON_OBJECT_SUITS_PATH 'modular_alliance/modules/alternative_textures/icons/obj/clothing/suits.dmi'
#define ICON_OBJECT_UNDER_SECURITY_PATH 'modular_alliance/modules/alternative_textures/icons/mob/clothing/under/security.dmi'
#define ICON_MOB_SUITS_PATH 'modular_alliance/modules/alternative_textures/icons/mob/clothing/suit.dmi'
#define ICON_MOB_UNDER_SECURITY_PATH 'modular_alliance/modules/alternative_textures/icons/mob/clothing/under/security.dmi'

/obj/item/clothing/suit/armor/vest
	icon = ICON_OBJECT_SUITS_PATH
	worn_icon = ICON_MOB_SUITS_PATH
	icon_state = "vest_black"
	lefthand_file = ""
	righthand_file = ""
	inhand_icon_state = ""

/obj/item/clothing/suit/armor/vest/alt
	icon_state = "vest_white"

/obj/item/clothing/under/rank/security/uni
	name = "military utilitarian form"
	desc = "The utilitarian form of the old-style Alliance."
	icon = ICON_OBJECT_UNDER_SECURITY_PATH
	worn_icon = ICON_MOB_UNDER_SECURITY_PATH
	icon_state = "util_sec"

/obj/item/clothing/under/rank/security/uni/n7
	name = "N7 utilitarian form"
	desc = "The old utilitarian uniform of the N7 fighters. I wonder how many people wore it?"
	icon_state = "util_n7"

#undef ICON_OBJECT_SUITS_PATH
#undef ICON_OBJECT_UNDER_SECURITY_PATH
#undef ICON_MOB_SUITS_PATH
#undef ICON_MOB_UNDER_SECURITY_PATH
