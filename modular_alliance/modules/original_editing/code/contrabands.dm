#define ICON_CONTRABANDS_PATH 'modular_alliance/modules/original_editing/icons/obj/contraband.dmi'

/obj/structure/sign/poster
	icon = ICON_CONTRABANDS_PATH

/obj/structure/sign/poster/random
	name = "random poster"
	icon_state = "random_anything"
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/modular_alliance

/obj/structure/sign/poster/modular_alliance/glory_alliance
	name = "Glory Alliance"
	desc = "A poster singing dithyrambs to the human System Alliance."
	icon_state = "glory_alliance"

/obj/structure/sign/poster/modular_alliance/reapers
	name = "Reapers Lies"
	desc = "A poster claiming that the Reapers are fiction. The question of who is depicted on the poster remains open."
	icon_state = "reapers"

/obj/structure/sign/poster/modular_alliance/spectres
	name = "Spectres defenders of the Galaxy."
	desc = "A gentle reminder that the Alliance, like all of Citadel Space, is under the invisible hand of the Council."
	icon_state = "spectres"

/obj/structure/sign/poster/modular_alliance/n7
	name = "N7 The TOP"
	desc = "A nice reminder from the Alliance that you are far from \"TOP\"."
	icon_state = "n7"

/obj/structure/sign/poster/modular_alliance/cerberus
	name = "Cerberus - Guardian of Humans"
	desc = "Cerberus clearly loves the color white. Does this mean that Illusive Man is a Good Man?"
	icon_state = "cerberus"

/obj/structure/sign/poster/modular_alliance/russia
	name = "Mother Russia"
	desc = "This poster radiates frostiness."
	icon_state = "russia"

/obj/structure/sign/poster/modular_alliance/monkey_front
	name = "Monkey Front!"
	desc = "Freedom Monkey! Bananas or death! Down with the dictatorship of the genetics gang!"
	icon_state = "monkey_front"

#undef ICON_CONTRABANDS_PATH
