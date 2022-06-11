#define ICON_GUNS_PATH 'modular_alliance/modules/modular_outfit/icons/guns.dmi'
#define ICON_LEFTHAND_GUNS_PATH 'modular_alliance/modules/modular_outfit/icons/guns_lefthand.dmi'
#define ICON_RIGHTHAND_GUNS_PATH 'modular_alliance/modules/modular_outfit/icons/guns_righthand.dmi'

//M-25 SMG

/obj/item/ammo_box/magazine/modular_alliance/m_25
	name = "M-25 SMG magazine (9mm)"
	icon = ICON_GUNS_PATH
	icon_state = "m_25_alliance_9mm-24"
	base_icon_state = "m_25_alliance_9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 24

/obj/item/ammo_box/magazine/modular_alliance/m_25/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 6)]"

/obj/item/ammo_box/magazine/modular_alliance/m_25/alliance
	name = "M-25 SMG Allieance magazine (9mm)"

/obj/item/ammo_box/magazine/modular_alliance/m_25/cerberus
	name = "M-25 SMG Cerberus magazine (9mm)"
	icon_state = "m_25_cerberus_9mm-24"
	base_icon_state = "m_25_cerberus_9mm"

/obj/item/gun/ballistic/automatic/modular_alliance/m_25
	name = "\improper M-25 SMG"
	desc = "Prototype submachine gun M-25."
	icon = ICON_GUNS_PATH
	lefthand_file = ICON_RIGHTHAND_GUNS_PATH
	righthand_file = ICON_RIGHTHAND_GUNS_PATH
	icon_state = "m_25_alliance"
	w_class = WEIGHT_CLASS_BULKY
	inhand_icon_state = "m_25_alliance"
	selector_switch_icon = TRUE
	mag_type = /obj/item/ammo_box/magazine/modular_alliance/m_25
	spawnwithmagazine = FALSE
	can_suppress = FALSE
	burst_size = 3
	fire_delay = 2
	spread = 5
	mag_display = TRUE
	empty_indicator = TRUE
	fire_sound = 'sound/weapons/gun/smg/shot_alt.ogg'

/obj/item/gun/ballistic/automatic/modular_alliance/m_25/alliance
	name = "\improper M-25 SMG"
	desc = "A submachine gun of unknown manufacture, with which the Alliance has recently been arming settlers and guards on distant colonies. The assembly of this weapon is of good quality, except for a sloppy paint job, which was clearly applied over the previous one. Next to the grip is engraved 'M-25. Made by C...'. The rest of the phrase is taped over with an Alliance logo sticker."
	mag_type = /obj/item/ammo_box/magazine/modular_alliance/m_25

/obj/item/gun/ballistic/automatic/modular_alliance/m_25/cerberus
	desc = "These weapons are used to guard Cerberus facilities and operatives on guerrilla, sabotage and reconnaissance missions behind the lines of humanity's enemies."
	icon_state = "m_25_cerberus"
	inhand_icon_state = "m_25_cerberus"
	mag_type = /obj/item/ammo_box/magazine/modular_alliance/m_25

// M-3 PISTOL

/obj/item/ammo_box/magazine/modular_alliance/m_3
	name = "M-3 SMG magazine (9mm)"
	icon = ICON_GUNS_PATH
	icon_state = "m_3_alliance_9mm-9"
	base_icon_state = "m_3_alliance_9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 9

/obj/item/ammo_box/magazine/modular_alliance/m_3/update_icon_state()
	. = ..()
	if (ammo_count() != 0)
		icon_state = "[base_icon_state]-9"
	else
		icon_state = "[base_icon_state]-0"

/obj/item/ammo_box/magazine/modular_alliance/m_3/alliance
	name = "M-3 Allieance magazine (9mm)"

/obj/item/ammo_box/magazine/modular_alliance/m_3/cerberus
	name = "M-3 Cerberus magazine (9mm)"
	icon_state = "m_3_cerberus_9mm-9"
	base_icon_state = "m_3_cerberus_9mm"

/obj/item/gun/ballistic/automatic/pistol/modular_alliance/m_3
	name = "\improper M-3"
	desc = "The 9mm M-3 pistol is manufactured by Elanus Risk Control. A real workhorse of the galaxy. "
	icon = ICON_GUNS_PATH
	lefthand_file = ICON_RIGHTHAND_GUNS_PATH
	righthand_file = ICON_RIGHTHAND_GUNS_PATH
	icon_state = "m_3_alliance"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/modular_alliance/m_3
	spawnwithmagazine = FALSE
	can_suppress = FALSE
	mag_display = TRUE
	empty_indicator = TRUE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'

/obj/item/gun/ballistic/automatic/pistol/modular_alliance/m_3/alliance

/obj/item/gun/ballistic/automatic/pistol/modular_alliance/m_3/cerberus
	icon_state = "m_3_cerberus"
	inhand_icon_state = "m_3_cerberus"

// M-23 SHOTGUN

/obj/item/gun/ballistic/shotgun/modular_alliance/m_23
	name = "M-23 shotgun"
	desc = "Standard army shotgun. Deals extremely high damage at short range, and practically ineffective at long range."
	icon = ICON_GUNS_PATH
	lefthand_file = ICON_RIGHTHAND_GUNS_PATH
	righthand_file = ICON_RIGHTHAND_GUNS_PATH
	icon_state = "m_23_alliance"
	inhand_icon_state = "m_23_alliance"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	burst_size = 1
	fire_delay = 8
	empty_indicator = TRUE
	mag_type = /obj/item/ammo_box/magazine/internal/shot
	sawn_desc = "Come with me if you want to live."
	can_be_sawn_off = TRUE

/obj/item/gun/ballistic/shotgun/modular_alliance/m_23/alliance

/obj/item/gun/ballistic/shotgun/modular_alliance/m_23/cerberus
	icon_state = "m_23_cerberus"
	inhand_icon_state = "m_23_cerberus"
