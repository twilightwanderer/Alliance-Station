/obj/item/storage/box/alliance_modular/traitor_set
	name = "тot at all suspicious box"
	icon_state = "internals"
	illustration = "emergencytank"

/obj/item/storage/box/alliance_modular/traitor_set/PopulateContents()
	var/static/items_inside = list(
		/obj/item/gun/ballistic/automatic/pistol/modular_alliance/m_3/cerberus=1,\
		/obj/item/ammo_box/magazine/modular_alliance/m_3/cerberus=2,\
		/obj/item/encryptionkey/alliance_modular/cerberus=1, \
		/obj/item/clothing/mask/breath=1, \
		/obj/item/tank/internals/emergency_oxygen=1, \
		/obj/item/reagent_containers/hypospray/combat=1
		)
	generate_items_inside(items_inside,src)
