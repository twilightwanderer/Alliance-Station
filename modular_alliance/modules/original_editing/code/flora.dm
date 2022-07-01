#define ICON_PLANTS_PATH 'modular_alliance/modules/original_editing/icons/obj/flora/plants.dmi'

/obj/item/kirbyplants
	icon = ICON_PLANTS_PATH

/obj/structure/flora/bush/full_style_random/Initialize(mapload)
	. = ..()
	var/rn = rand(1, 20)
	switch (rn)
		if(1) icon_state = "firstbush_[rand(1, 4)]"
		if(2) icon_state = "reedbush_[rand(1, 4)]"
		if(3) icon_state = "leafybush_[rand(1, 3)]"
		if(4) icon_state = "palebush_[rand(1, 4)]"
		if(5) icon_state = "stalkybush_[rand(1, 3)]"
		if(6) icon_state = "grassybush_[rand(1, 4)]"
		if(7) icon_state = "sparsegrass_[rand(1, 3)]"
		if(8) icon_state = "fullgrass_[rand(1, 3)]"
		if(9) icon_state = "fernybush_[rand(1, 3)]"
		if(10) icon_state = "sunnybush_[rand(1, 3)]"
		if(11) icon_state = "genericbush_[rand(1, 4)]"
		if(12) icon_state = "pointybush_[rand(1, 4)]"
		if(13) icon_state = "lavendergrass_[rand(1, 4)]"
		if(14) icon_state = "ywflowers_[rand(1, 3)]"
		if(15) icon_state = "brflowers_[rand(1, 3)]"
		if(16) icon_state = "ppflowers_[rand(1, 3)]"
		if(17) icon_state = "busha[rand(1, 3)]"
		if(18) icon_state = "bushb[rand(1, 3)]"
		if(19) icon_state = "bushc[rand(1, 3)]"
		if(20) icon_state = "bush[rand(1, 3)]"

#undef ICON_PLANTS_PATH
