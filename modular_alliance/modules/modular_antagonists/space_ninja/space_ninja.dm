#define ICON_OBJECT_SUIT_PATH 'modular_alliance/modules/modular_antagonists/space_ninja/icons/obj/suits.dmi'
#define ICON_MOB_SUIT_PATH 'modular_alliance/modules/modular_antagonists/space_ninja/icons/mob/suit.dmi'
#define ICON_OBJECT_MASK_PATH 'modular_alliance/modules/modular_antagonists/space_ninja/icons/obj/mask.dmi'
#define ICON_MOB_MASK_PATH 'modular_alliance/modules/modular_antagonists/space_ninja/icons/mob/mask.dmi'

/datum/outfit/ninja
	name = "Space Ninja"
	uniform = /obj/item/clothing/under/color/white
	suit = /obj/item/clothing/suit/space/space_ninja
	glasses = /obj/item/clothing/glasses/night
	mask = /obj/item/clothing/mask/gas/space_ninja
	head = /obj/item/clothing/head/helmet/space/space_ninja
	ears = /obj/item/radio/headset/alliance_modular/headset_cerberus/alt
	shoes = /obj/item/clothing/shoes/space_ninja
	gloves = /obj/item/clothing/gloves/space_ninja
	l_pocket = /obj/item/grenade/c4/ninja
	r_pocket = /obj/item/tank/internals/emergency_oxygen
	internals_slot = ITEM_SLOT_RPOCKET
	belt = /obj/item/energy_katana
	implants = list(/obj/item/implant/explosive)

/obj/item/clothing/suit/space/space_ninja
	icon = ICON_OBJECT_SUIT_PATH
	worn_icon = ICON_MOB_SUIT_PATH

/obj/item/clothing/mask/gas/space_ninja
	icon = ICON_OBJECT_MASK_PATH
	worn_icon = ICON_MOB_MASK_PATH

/obj/item/energy_katana
	icon = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/obj/items_and_weapons.dmi'
	worn_icon = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/mob/back.dmi'
	lefthand_file = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/mob/swords_lefthand.dmi'
	righthand_file = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/mob/swords_righthand.dmi'

/obj/item/clothing/head/helmet/space/space_ninja
	icon = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/obj/hats.dmi'
	worn_icon = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/mob/head.dmi'

/obj/item/clothing/gloves/space_ninja
	icon = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/obj/gloves.dmi'
	worn_icon = 'modular_alliance/modules/modular_antagonists/space_ninja/icons/mob/hands.dmi'
