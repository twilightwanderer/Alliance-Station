#define ICON_MOD_OVERRIDE 'modular_alliance/modules/modular_outfit/icons/obj/mod_clothing.dmi'
#define ICON_MOD_WORN_OVERRIDE 'modular_alliance/modules/modular_outfit/icons/mob/mod_clothing.dmi'

/datum/mod_theme/modulare_mod/cerberus
	name = "cerberus"
	desc = ""
	extended_desc = ""
	default_skin = "cerberus"
	armor = list(MELEE = 15, BULLET = 20, LASER = 15, ENERGY = 15, BOMB = 35, BIO = 100, FIRE = 50, ACID = 90, WOUND = 25)
	atom_flags = PREVENT_CONTENTS_EXPLOSION_1
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	siemens_coefficient = 0
	slowdown_inactive = 1
	slowdown_active = 0.5
	ui_theme = "syndicate"
	inbuilt_modules = list(/obj/item/mod/module/armor_booster)
	allowed_suit_storage = list(
		/obj/item/flashlight,
		/obj/item/tank/internals,
		/obj/item/ammo_box,
		/obj/item/ammo_casing,
		/obj/item/restraints/handcuffs,
		/obj/item/assembly/flash,
		/obj/item/melee/baton,
		/obj/item/melee/energy/sword,
		/obj/item/shield/energy,
	)
	skins = list(
		"cerberus" = list(
			MOD_ICON_OVERRIDE = ICON_MOD_OVERRIDE,
			MOD_WORN_ICON_OVERRIDE = ICON_MOD_WORN_OVERRIDE,
			HELMET_FLAGS = list(
				UNSEALED_LAYER = NECK_LAYER,
				UNSEALED_CLOTHING = SNUG_FIT,
				SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
				UNSEALED_INVISIBILITY = HIDEFACIALHAIR,
				SEALED_INVISIBILITY = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT,
				SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
			),
			CHESTPLATE_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
			),
			GAUNTLETS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
			BOOTS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
		)
	)

/obj/item/mod/control/pre_equipped/modulare_mod/cerberus
	theme = /datum/mod_theme/modulare_mod/cerberus
	applied_cell = /obj/item/stock_parts/cell/super
	initial_modules = list(
		/obj/item/mod/module/storage/syndicate,
		/obj/item/mod/module/emp_shield,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/jetpack,
		/obj/item/mod/module/pathfinder,
		/obj/item/mod/module/flashlight,
		/obj/item/mod/module/dna_lock,
	)
