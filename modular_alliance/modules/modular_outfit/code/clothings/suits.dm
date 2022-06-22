#define ICON_OBJECT_UNDER_SECURITY_PATH 'modular_alliance/modules/modular_outfit/icons/obj/clothings/under/security.dmi'
#define ICON_MOB_UNDER_SECURITY_PATH 'modular_alliance/modules/modular_outfit/icons/mob/clothings/under/security.dmi'
#define ICON_OBJECT_UNDER_CERBERUS_PATH 'modular_alliance/modules/modular_outfit/icons/obj/clothings/under/cerberus.dmi'
#define ICON_MOB_UNDER_CERBERUS_PATH 'modular_alliance/modules/modular_outfit/icons/mob/clothings/under/cerberus.dmi'


/obj/item/clothing/under/rank/security/alliance_modular/uni
	name = "military utilitarian form"
	desc = "The utilitarian form of the old-style Alliance."
	icon = ICON_OBJECT_UNDER_SECURITY_PATH
	worn_icon = ICON_MOB_UNDER_SECURITY_PATH
	icon_state = "util_sec"

/obj/item/clothing/under/rank/security/alliance_modular/uni/n7
	name = "N7 utilitarian form"
	desc = "The old utilitarian uniform of the N7 fighters. I wonder how many people wore it?"
	icon_state = "util_n7"

/obj/item/clothing/under/rank/alliance_modular/cerberus/uni
	name = "Cerberus utilitarian form"
	desc = "A simple utilitarian form of Cerberus workers. It will have to be washed three times more often than a regular uniform."
	icon = ICON_OBJECT_UNDER_CERBERUS_PATH
	worn_icon = ICON_MOB_UNDER_CERBERUS_PATH
	icon_state = "util_cerberus"

#undef ICON_OBJECT_UNDER_SECURITY_PATH
#undef ICON_MOB_UNDER_SECURITY_PATH
#undef ICON_OBJECT_UNDER_CERBERUS_PATH
#undef ICON_MOB_UNDER_CERBERUS_PATH
