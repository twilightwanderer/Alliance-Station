/obj/machinery/vending/modular_alliance/public_engivend
	name = "\improper Public Engi-Vend"
	desc = "Spare tool vending. What? Did you expect some witty description?"
	icon_state = "engivend"
	icon_deny = "engivend-deny"
	panel_type = "panel10"
	req_access = list(ACCESS_ENGINE_EQUIP)
	products = list(
		/obj/item/clothing/glasses/meson/engine = 2,
		/obj/item/clothing/glasses/welding = 3,
		/obj/item/multitool = 4,
		/obj/item/grenade/chem_grenade/smart_metal_foam = 10,
		/obj/item/geiger_counter = 5,
		/obj/item/stock_parts/cell/high = 10,
		/obj/item/electronics/airlock = 10,
		/obj/item/electronics/apc = 10,
		/obj/item/electronics/airalarm = 10,
		/obj/item/electronics/firealarm = 10,
		/obj/item/electronics/firelock = 10,
	)
	contraband = list(
		/obj/item/stock_parts/cell/potato = 3,
	)
	premium = list(
		/obj/item/storage/belt/utility = 3,
		/obj/item/storage/box/smart_metal_foam = 1,
	)
	refill_canister = /obj/item/vending_refill/modular_alliance/public_engivend
	default_price = PAYCHECK_CREW
	extra_price = PAYCHECK_COMMAND * 1.5
	payment_department = ACCOUNT_ENG
	light_mask = "engivend-light-mask"

/obj/item/vending_refill/modular_alliance/public_engivend
	machine_name = "Public Engi-Vend"
	icon_state = "refill_engi"
