/datum/reagent/medicine/modular_alliance/quarian_antibodies
	name = "Quarian Antibodies"
	description = "A set of artificially created antibodies that can temporarily reduce the chance of contracting viruses. To be used exclusively by the quarian."
	color = "#808080"
	ph = 4
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED

/datum/chemical_reaction/modular_alliance/quarian_antibodies
	optimal_temp = 500
	results = list(/datum/reagent/medicine/modular_alliance/quarian_antibodies = 3)
	required_reagents = list(/datum/reagent/medicine/leporazine = 1, /datum/reagent/medicine/modafinil = 1, /datum/reagent/medicine/spaceacillin = 1)
	reaction_tags = REACTION_TAG_OTHER

/obj/item/reagent_containers/hypospray/medipen/modular_alliance/quarian_antibodies
	name = "quarian antibodies medipen"
	desc = "Medipen with a set of artificially created antibodies that can temporarily reduce the chance of contracting viruses. To be used exclusively by the quarian."
	volume = 50
	amount_per_transfer_from_this = 50
	list_reagents = list(/datum/reagent/medicine/modular_alliance/quarian_antibodies = 50)
