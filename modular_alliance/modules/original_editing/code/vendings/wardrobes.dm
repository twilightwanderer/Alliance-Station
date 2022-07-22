/obj/machinery/vending/wardrobe/modular_alliance/public_cargo_wardrobe
	name = "Public CargoDrobe"
	desc = "A highly advanced vending machine for buying cargo related clothing for free."
	icon_state = "cargodrobe"
	product_ads = "Upgraded Assistant Style! Pick yours today!;These shorts are comfy and easy to wear, get yours now!"
	vend_reply = "Thank you for using the CargoDrobe!"
	products = list(
		/obj/item/storage/bag/mail = 3,
		/obj/item/clothing/suit/hooded/wintercoat/cargo = 3,
		/obj/item/clothing/under/rank/cargo/tech = 3,
		/obj/item/clothing/under/rank/cargo/tech/skirt = 3,
		/obj/item/clothing/shoes/sneakers/black = 3,
		/obj/item/clothing/gloves/fingerless = 3,
		/obj/item/clothing/head/beret/cargo = 3,
		/obj/item/clothing/mask/bandana/striped/cargo = 3,
		/obj/item/clothing/head/soft = 3
	)
	premium = list(
		/obj/item/clothing/under/rank/cargo/miner = 3,
		/obj/item/clothing/head/mailman = 1,
		/obj/item/clothing/under/misc/mailman = 1,
	)
	refill_canister = /obj/item/vending_refill/modular_alliance/public_cargo_wardrobe
	payment_department = ACCOUNT_CAR

/obj/item/vending_refill/modular_alliance/public_cargo_wardrobe
	machine_name = "Public CargoDrobe"

/obj/machinery/vending/wardrobe/modular_alliance/public_science_wardrobe
	name = "Public SciDrobe"
	desc = "A simple vending machine suitable to dispense well tailored science clothing. Endorsed by Space Cubans."
	icon_state = "scidrobe"
	product_ads = "Longing for the smell of plasma burnt flesh? Buy your science clothing now!;Made with 10% Auxetics, so you don't have to worry about losing your arm!"
	vend_reply = "Thank you for using the SciDrobe!"
	products = list(
		/obj/item/clothing/accessory/pocketprotector = 3,
		/obj/item/storage/backpack/science = 3,
		/obj/item/storage/backpack/satchel/science = 3,
		/obj/item/storage/backpack/duffelbag/science = 3,
		/obj/item/clothing/head/beret/science = 3,
		/obj/item/clothing/head/beret/science/fancy = 3,
		/obj/item/clothing/mask/bandana/striped/science = 3,
		/obj/item/clothing/suit/hooded/wintercoat/science = 3,
		/obj/item/clothing/under/rank/rnd/scientist = 3,
		/obj/item/clothing/under/rank/rnd/scientist/skirt = 3,
		/obj/item/clothing/suit/toggle/labcoat/science = 3,
		/obj/item/clothing/shoes/sneakers/white = 3,
		/obj/item/clothing/mask/gas = 3,
		)
	refill_canister = /obj/item/vending_refill/wardrobe/modular_alliance/public_science_wardrobe
	payment_department = ACCOUNT_SCI

/obj/item/vending_refill/wardrobe/modular_alliance/public_science_wardrobe
	machine_name = "Public SciDrobe"

/obj/machinery/vending/wardrobe/modular_alliance/public_chef_wardrobe
	name = "Public ChefDrobe"
	desc = "This vending machine might not dispense meat, but it certainly dispenses chef related clothing."
	icon_state = "chefdrobe"
	product_ads = "Our clothes are guaranteed to protect you from food splatters!"
	vend_reply = "Thank you for using the ChefDrobe!"
	products = list(
		/obj/item/clothing/under/suit/waiter = 2,
		/obj/item/clothing/accessory/waistcoat = 2,
		/obj/item/clothing/suit/apron/chef = 3,
		/obj/item/clothing/head/soft/mime = 2,
		/obj/item/storage/box/mousetraps = 2,
		/obj/item/circuitboard/machine/dish_drive = 1,
		/obj/item/clothing/suit/toggle/chef = 1,
		/obj/item/clothing/under/rank/civilian/chef = 1,
		/obj/item/clothing/under/rank/civilian/chef/skirt = 2,
		/obj/item/clothing/head/chefhat = 1,
		/obj/item/clothing/under/rank/civilian/cookjorts = 2,
		/obj/item/clothing/shoes/cookflops = 2,
		/obj/item/reagent_containers/glass/rag = 1,
		/obj/item/clothing/suit/hooded/wintercoat = 2,
		)
	refill_canister = /obj/item/vending_refill/wardrobe/modular_alliance/public_chef_wardrobe
	payment_department = ACCOUNT_SRV

/obj/item/vending_refill/wardrobe/modular_alliance/public_chef_wardrobe
	machine_name = "Public ChefDrobe"
