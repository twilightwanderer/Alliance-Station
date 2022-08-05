#define ICON_KODIAK_ALLIANCE_TEXTURES_PATH 'modular_alliance/modules/modular_shuttles/icons/kodiak_alliance.dmi'

/area/shuttle/modular_shuttle/kodiak/ruin/miner
	name = "Alliance UT-47 Miner Kodiak"

/datum/map_template/shuttle/ruin/modular_shuttle/kodiak/miner
	suffix = "kodiak_miner"
	name = "Alliance UT-47 Miner Kodiak"
	shuttle_id = "kodiak_miner"

/obj/machinery/computer/shuttle/modular_shuttle/ruin/kodiak/miner
	name = "UT-47 Miner Kodiak Control"
	desc = "Used to control the UT-47 Miner Kodiak"
	circuit = /obj/item/circuitboard/computer/ruin/kodiak_miner
	shuttleId = "kodiak_miner"
	possible_destinations = "kodiak_miner_custom;kodiak_miner_home;kodiak_miner_away"

/obj/machinery/computer/camera_advanced/shuttle_docker/ruin/kodiak/miner
	name = "UT-47 Kodiak Navigation Computer"
	desc = "The Navigation console for the UT-47 Kodiak Control"
	shuttleId = "kodiak_miner"
	lock_override = NONE
	shuttlePortId = "kodiak_miner_custom"
	jump_to_ports = list("kodiak_miner_home" = 1, "kodiak_miner_away" = 1)
	view_range = 0

/obj/item/circuitboard/computer/ruin/kodiak_miner
	name = "UT-47 Kodiak Control Console (Computer Board)"
	build_path = /obj/machinery/computer/shuttle/modular_shuttle/ruin/kodiak/miner

#undef ICON_KODIAK_ALLIANCE_TEXTURES_PATH
