/obj/effect/mapping_helpers/airlock/access/any/alliance_modular/cerberus

/obj/effect/mapping_helpers/airlock/access/any/alliance_modular/cerberus/get_access()
	var/list/access_list = ..()
	access_list += "cerberus"
	return access_list
