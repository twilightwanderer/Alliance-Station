#define ICON_RADIO_PATH 'modular_alliance/modules/modular_outfit/icons/radio.dmi'

/obj/machinery/telecomms/relay/preset/alliance_modular/cerberus
	id = "Cerberus Relay"
	hide = 1
	toggled = FALSE
	autolinkers = list("c_relay")

/obj/item/encryptionkey/alliance_modular
	icon = ICON_RADIO_PATH

/obj/item/encryptionkey/alliance_modular/cerberus
	name = "cerberus encryption key"
	icon_state = "cerberus_cypherkey"
	channels = list(RADIO_CHANNEL_CERBERUS = 1)
	independent = TRUE

/obj/item/radio/headset/alliance_modular
	icon = ICON_RADIO_PATH

/obj/item/radio/headset/headset_cerberus
	keyslot = new /obj/item/encryptionkey/alliance_modular/cerberus

/obj/item/radio/headset/alliance_modular/headset_cerberus/alt
	name = "cerberus radio headset"
	desc = "A white radio headset with the Cerberus logo on it. Somehow Cerberus engineers managed to develop a coding system that allows his agents to use unrepeatered radio communication over a much greater distance than Alliance radio communication."
	icon_state = "cerberus_headset_alt"
	keyslot = new /obj/item/encryptionkey/alliance_modular/cerberus
