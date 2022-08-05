#define ICON_KODIAK_ALLIANCE_TEXTURES_PATH 'modular_alliance/modules/modular_shuttles/icons/kodiak_alliance.dmi'

/area/shuttle/modular_shuttle/kodiak/ruin/security
	name = "Alliance UT-47 Security Kodiak"

/datum/map_template/shuttle/ruin/modular_shuttle/kodiak/security
	suffix = "kodiak_security"
	name = "Alliance UT-47 Security Kodiak"
	shuttle_id = "kodiak_security"

/obj/machinery/computer/shuttle/modular_shuttle/ruin/kodiak/security
	name = "UT-47 Security Kodiak Control"
	desc = "Used to control the UT-47 Security Kodiak"
	circuit = /obj/item/circuitboard/computer/ruin/kodiak_security
	shuttleId = "kodiak_security"
	possible_destinations = "kodiak_security_custom;kodiak_security_home;kodiak_security_away"

/obj/machinery/computer/camera_advanced/shuttle_docker/ruin/kodiak/security
	name = "UT-47 Kodiak Navigation Computer"
	desc = "The Navigation console for the UT-47 Kodiak Control"
	shuttleId = "kodiak_security"
	lock_override = NONE
	shuttlePortId = "kodiak_security_custom"
	jump_to_ports = list("kodiak_security_home" = 1, "kodiak_security_away" = 1)
	view_range = 0

/obj/item/circuitboard/computer/ruin/kodiak_security
	name = "UT-47 Kodiak Control Console (Computer Board)"
	build_path = /obj/machinery/computer/shuttle/modular_shuttle/ruin/kodiak/security

#undef ICON_KODIAK_ALLIANCE_TEXTURES_PATH
