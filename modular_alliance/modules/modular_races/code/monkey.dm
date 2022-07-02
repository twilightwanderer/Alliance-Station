/mob/living/carbon/human/species/monkey/modular_alliance/monkey_front
	ai_controller = /datum/ai_controller/monkey/angry

/mob/living/carbon/human/species/monkey/modular_alliance/Initialize(mapload)
	. = ..()
	if(prob(5))
		var/obj/item/clothing/head/beret/beret = new(src)
		var/obj/item/knife/hunting/hunting = new(src)
		var/obj/item/storage/backpack/satchel/leather/leather = new(src)
		equip_to_slot_or_del(beret,ITEM_SLOT_HEAD)
		put_in_r_hand(hunting)
		equip_to_slot_or_del(leather, ITEM_SLOT_BACK)
		name = "Monkey General"
		return
	if(prob(10))
		var/obj/item/clothing/head/helmet/old/helmet  = new(src)
		var/obj/item/clothing/mask/gas/mask  = new(src)
		var/obj/item/knife/knife  = new(src)
		var/obj/item/storage/backpack/backpack = new(src)
		equip_to_slot_or_del(helmet,ITEM_SLOT_HEAD)
		equip_to_slot_or_del(mask,ITEM_SLOT_MASK)
		put_in_r_hand(knife)
		equip_to_slot_or_del(backpack, ITEM_SLOT_BACK)
		name = "Monkey Soldat"
		return
	if(prob(10))
		var/obj/item/clothing/mask/russian_balaclava/balaclava = new(src)
		var/obj/item/storage/backpack/a_backpack = new(src)
		var/obj/item/poster/random_contraband/l_contraband = new(src)
		var/obj/item/poster/random_contraband/r_contraband = new(src)
		equip_to_slot_or_del(balaclava,ITEM_SLOT_MASK)
		put_in_l_hand(l_contraband)
		put_in_r_hand(r_contraband)
		equip_to_slot_or_del(a_backpack, ITEM_SLOT_BACK)
		name = "Monkey Agitator"
		return
	if(prob(10))
		var/obj/item/clothing/mask/gas/explorer/gas = new(src)
		var/obj/item/pickaxe/pickaxe = new(src)
		var/obj/item/storage/backpack/duffelbag/explorer/duffelbag = new(src)
		equip_to_slot_or_del(gas, ITEM_SLOT_MASK)
		put_in_r_hand(pickaxe)
		equip_to_slot_or_del(duffelbag, ITEM_SLOT_BACK)
		name = "Monkey Extractor"
		return
	if(prob(10))
		var/obj/item/clothing/head/hardhat/weldhat/orange/weldhat = new(src)
		var/obj/item/weldingtool/weldingtool = new(src)
		var/obj/item/storage/backpack/industrial/industrial = new(src)
		equip_to_slot_or_del(weldhat,ITEM_SLOT_HEAD)
		put_in_r_hand(weldingtool)
		equip_to_slot_or_del(industrial, ITEM_SLOT_BACK)
		name = "Monkey Engineer"
		return
	name = "Monkey Peasant"
