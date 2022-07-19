/obj/item/encryptionkey/modular_alliance/tv
	name = "nanotrasen tv encryption key"
	channels = list(RADIO_CHANNEL_TV = 1)
	independent = TRUE

/obj/item/radio/intercom/modular_alliance/tv
	name = "TV Show Radio"
	desc = "Almost like television, only without the picture."
	keyslot = new /obj/item/encryptionkey/modular_alliance/tv
	freqlock = TRUE

MAPPING_DIRECTIONAL_HELPERS(/obj/item/radio/intercom/modular_alliance/tv, 32)

/obj/item/radio/intercom/modular_alliance/tv/Initialize(mapload)
	. = ..()
	set_frequency(FREQ_TV)
