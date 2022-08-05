#define ICON_KODIAK_ALLIANCE_TEXTURES_PATH 'modular_alliance/modules/modular_shuttles/icons/kodiak_alliance.dmi'

/area/shuttle/modular_shuttle/kodiak/ruin/scientific
	name = "Alliance UT-47 Scientific Kodiak"

/datum/map_template/shuttle/ruin/modular_shuttle/kodiak/scientific
	suffix = "kodiak_scientific"
	name = "Alliance UT-47 Scientific Kodiak"
	shuttle_id = "kodiak_scientific"

/obj/machinery/computer/shuttle/modular_shuttle/ruin/kodiak/scientific
	name = "UT-47 Scientific Kodiak Control"
	desc = "Used to control the UT-47 Scientific Kodiak"
	circuit = /obj/item/circuitboard/computer/ruin/kodiak_scientific
	shuttleId = "kodiak_scientific"
	possible_destinations = "kodiak_scientific_custom;kodiak_scientific_home;kodiak_scientific_away"

/obj/machinery/computer/camera_advanced/shuttle_docker/ruin/kodiak/scientific
	name = "UT-47 Kodiak Navigation Computer"
	desc = "The Navigation console for the UT-47 Kodiak Control"
	shuttleId = "kodiak_scientific"
	lock_override = NONE
	shuttlePortId = "kodiak_scientific_custom"
	jump_to_ports = list("kodiak_scientific_home" = 1, "kodiak_scientific_away" = 1)
	view_range = 0

/obj/item/circuitboard/computer/ruin/kodiak_scientific
	name = "UT-47 Kodiak Control Console (Computer Board)"
	build_path = /obj/machinery/computer/shuttle/modular_shuttle/ruin/kodiak/scientific

#undef ICON_KODIAK_ALLIANCE_TEXTURES_PATH
