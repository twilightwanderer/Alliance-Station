/datum/design/modular_alliance/pocket_tvcamera
	name = "Pocket TV Camera"
	id = "pocket_tvcamera"
	build_type = AUTOLATHE | PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = 200, /datum/material/glass = 50, /datum/material/gold=100, /datum/material/plastic = 800, /datum/material/bluespace = 50)
	build_path = /obj/item/device/modular_alliance/pocket_tvcamera
	category = list("initial","Misc")
	departmental_flags = DEPARTMENT_BITFLAG_SERVICE

/datum/design/modular_alliance/pocket_tv
	name = "Pocket TV monitor"
	id = "pocket_tv"
	build_type = AUTOLATHE | PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = 200, /datum/material/glass = 50)
	build_path = /obj/item/modular_alliance/pocket_tv
	category = list("initial","Misc")

/obj/item/circuitboard/computer/modular_alliance/wooden_tv
	name = "TV BOX"
	build_path = /obj/machinery/computer/security/wooden_tv/modular_alliance/tv

/datum/design/board/modular_alliance/wooden_tv
	name = "Computer Design (TV BOX)"
	desc = "Allows for the construction of circuit boards used to build a TV BOX."
	id = "atmosalerts"
	build_path = /obj/item/circuitboard/computer/modular_alliance/wooden_tv
	category = list("Computer Boards")
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING
