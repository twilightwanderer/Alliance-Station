/obj/machinery/camera/modular_alliance/tv_camera
	name = "TV Show Camera"
	network = list("tv")
	c_tag = "TV Show"
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF | FREEZE_PROOF
	var/obj/item/radio/internal_radio
	var/radio_key = /obj/item/encryptionkey/alliance_modular/tv

/obj/machinery/camera/modular_alliance/tv_camera/Initialize(mapload, ndir, building)
	. = ..()
	internal_radio = new /obj/item/radio(src)
	internal_radio.keyslot = new radio_key
	internal_radio.set_frequency(FREQ_TV)
	internal_radio.set_broadcasting(TRUE)
	internal_radio.set_listening(FALSE)

/obj/machinery/camera/modular_alliance/tv_camera/Destroy()
	QDEL_NULL(internal_radio)

/obj/machinery/computer/security/telescreen/modular_alliance/tv
	name = "tv monitor"
	desc = "Humans call it a zombie screen. Sometimes they show Japanese cartoons on it"
	icon = 'modular_alliance/modules/modular_objects/icons/television.dmi'
	icon_state = "entertainment"
	network = list("tv")
	var/obj/item/radio/internal_radio
	var/radio_key = /obj/item/encryptionkey/alliance_modular/tv
	var/sound = TRUE

MAPPING_DIRECTIONAL_HELPERS(/obj/machinery/computer/security/telescreen/modular_alliance/tv, 32)

/obj/machinery/computer/security/telescreen/modular_alliance/tv/Initialize(mapload)
	. = ..()
	internal_radio = new /obj/item/radio(src)
	internal_radio.keyslot = new radio_key
	internal_radio.set_frequency(FREQ_TV)

/obj/machinery/computer/security/telescreen/modular_alliance/tv/examine()
	. = ..()
	. += "Ctrl + click toggles the sound. Sound indicator lights [sound ? "green" : "red"]"

/obj/machinery/computer/security/telescreen/modular_alliance/tv/CtrlClick(mob/user)
	. = ..()
	sound = !sound
	internal_radio.set_on(sound)
	internal_radio.set_frequency(FREQ_TV)
	to_chat(user, "You have turned [sound ? "on" : "off"] the sound")

/obj/machinery/computer/security/telescreen/modular_alliance/tv/proc/announcement(var/message)
	say(message)
	icon_state = "entertainment_on"
	addtimer(VARSET_CALLBACK(src, icon_state, "entertainment"), 15 SECONDS)

/obj/machinery/computer/security/telescreen/modular_alliance/tv/Destroy()
	QDEL_NULL(internal_radio)
