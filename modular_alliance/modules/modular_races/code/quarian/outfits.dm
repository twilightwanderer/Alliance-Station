/obj/item/storage/box/alliance_modular/quarian
	name = "Quarian Survival Kit"
	desc = "A special kit designed for surviving quarian outside of worlds-ships."
	icon_state = "internals"
	illustration = "heart"

/obj/item/storage/box/alliance_modular/quarian/PopulateContents()
	var/static/items_inside = list(
		/obj/item/clothing/mask/breath=1,\
		/obj/item/tank/internals/emergency_oxygen=1, \
		/obj/item/reagent_containers/hypospray/medipen=1, \
		/obj/item/reagent_containers/hypospray/medipen/modular_alliance/quarian_antibodies=2,
		)
	generate_items_inside(items_inside,src)

/datum/outfit/modular_alliance/quarian
	name = "Assistant Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/white
	gloves = /obj/item/clothing/gloves/color/modular_alliance/quarian
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/white
	shoes = /obj/item/clothing/shoes/modular_alliance/quarian
	mask = /obj/item/clothing/mask/breath
	l_hand = /obj/item/storage/box/alliance_modular/quarian

/datum/outfit/modular_alliance/quarian/lawyer
	name = "Lawyer Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/prisoner
	name = "Prisoner Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/orange
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/orange

/datum/outfit/modular_alliance/quarian/medical
	name = "Medical Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/red
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/red

/datum/outfit/modular_alliance/quarian/paramedic
	name = "Paramedic Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/red
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/red

/datum/outfit/modular_alliance/quarian/viro
	name = "Virology Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/chemist
	name = "Chemist Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/orange
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/orange

/datum/outfit/modular_alliance/quarian/science
	name = "Science Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/violet
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet

/datum/outfit/modular_alliance/quarian/robotics
	name = "Robotics Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/violet
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet

/datum/outfit/modular_alliance/quarian/genetics
	name = "Genetics Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/violet
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet

/datum/outfit/modular_alliance/quarian/engineering
	name = "Engineering Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/yellow
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow

/datum/outfit/modular_alliance/quarian/atmospherics
	name = "Atmospherics Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/yellow
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow

/datum/outfit/modular_alliance/quarian/cargo
	name = "Cargo Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/yellow
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow

/datum/outfit/modular_alliance/quarian/mining
	name = "Mining Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/violet
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet

/datum/outfit/modular_alliance/quarian/chaplain
	name = "Chaplain Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/black
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/black

/datum/outfit/modular_alliance/quarian/bar
	name = "Bartender Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/black
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/black

/datum/outfit/modular_alliance/quarian/chef
	name = "Chef Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/white
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/white

/datum/outfit/modular_alliance/quarian/curator
	name = "Curator Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/botany
	name = "Botany Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/janitor
	name = "Janitor Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/violet
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet

/datum/outfit/modular_alliance/quarian/psychologist
	name = "Psychologist Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/mime
	name = "Mime Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/black
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/black

/datum/outfit/modular_alliance/quarian/clown
	name = "Clown Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/orange
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/orange


//For unused roles not to break their spawn.
/datum/outfit/modular_alliance/quarian/security
	name = "Security Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/blue
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/blue

/datum/outfit/modular_alliance/quarian/detective
	name = "Detective Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/blue
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/blue

/datum/outfit/modular_alliance/quarian/warden
	name = "Warden Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/blue
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/blue

/datum/outfit/modular_alliance/quarian/captain
	name = "Captain Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/blue
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/blue

/datum/outfit/modular_alliance/quarian/head_of_personnel
	name = "Head of Personnel Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/head_of_security
	name = "Head of Security Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/blue
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/blue

/datum/outfit/modular_alliance/quarian/chief_engineer
	name = "Chief Engineer Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/yellow
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow

/datum/outfit/modular_alliance/quarian/chief_medical_officer
	name = "Chief Medical Officer Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/red
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/red

/datum/outfit/modular_alliance/quarian/quartermaster
	name = "Quartermaster Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/yellow
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow

/datum/outfit/modular_alliance/quarian/research_director
	name = "Research Director Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/violet
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet

/datum/outfit/modular_alliance/quarian/centcom_commander
	name = "CentCom Command Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/centcom_official
	name = "CentCom Official Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/centcom_intern
	name = "CentCom Intern Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/party_janitor
	name = "ERP Cleaning Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/violet
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/violet

/datum/outfit/modular_alliance/quarian/party_bouncer
	name = "ERP Bouncer Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green

/datum/outfit/modular_alliance/quarian/party_constructor
	name = "ERP Constructor Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/yellow
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/yellow

/datum/outfit/modular_alliance/quarian/party_comedian
	name = "ERP Comedian Quarian"

	uniform = /obj/item/clothing/under/modular_alliance/quarian/green
	head = /obj/item/clothing/head/helmet/space/modular_alliance/quarian/green
