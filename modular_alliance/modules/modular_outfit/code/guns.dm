/obj/item/ammo_box/magazine/modular_alliance/m_25
	name = "M-25 SMG magazine (9mm)"
	icon = 'modular_alliance/modules/modular_outfit/icons/guns.dmi'
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
	icon = 'modular_alliance/modules/modular_outfit/icons/guns.dmi'
	lefthand_file = 'modular_alliance/modules/modular_outfit/icons/guns_lefthand.dmi'
	righthand_file = 'modular_alliance/modules/modular_outfit/icons/guns_righthand.dmi'
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
