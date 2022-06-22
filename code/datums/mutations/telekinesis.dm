///Telekinesis lets you interact with objects from range, and gives you a light blue halo around your head.
/datum/mutation/human/telekinesis
	name = "Biotics" // ALLIANCE EDIT
	//name = "Telekinesis" TG ORIGINAL
	desc = "A strange mutation caused by the effect of Element Zero on the embryo's nervous system." // ALLIANCE EDIT
	//desc = "A strange mutation that allows the holder to interact with objects through thought."
	quality = POSITIVE
	difficulty = 18
	text_gain_indication = "<span class='notice'>You want to identify with the Asari</span>" // ALLIANCE EDIT
	//text_gain_indication = "<span class='notice'>You feel smarter!</span>" TG ORIGINAL
	limb_req = BODY_ZONE_HEAD
	instability = 30
	///Typecache of atoms that TK shouldn't interact with
	var/static/list/blacklisted_atoms = typecacheof(list(/atom/movable/screen))

/datum/mutation/human/telekinesis/New(class_ = MUT_OTHER, timer, datum/mutation/human/copymut)
	..()
	// ALLIANCE EDIT BEGIN
	if(!(type in visual_indicators))
		visual_indicators[type] = list()
	// ALLIANCE EDIT END
	/* TG ORIGINAL
	if(!(type in visual_indicators))
		visual_indicators[type] = list(mutable_appearance('icons/effects/genetics.dmi', "telekinesishead", -MUTATIONS_LAYER))
	TG ORIGINAL END*/

/datum/mutation/human/telekinesis/on_acquiring(mob/living/carbon/human/H)
	. = ..()
	if(.)
		return
	RegisterSignal(H, COMSIG_MOB_ATTACK_RANGED, .proc/on_ranged_attack)

/datum/mutation/human/telekinesis/on_losing(mob/living/carbon/human/H)
	. = ..()
	if(.)
		return
	UnregisterSignal(H, COMSIG_MOB_ATTACK_RANGED)

/datum/mutation/human/telekinesis/get_visual_indicator()
	return visual_indicators[type][1]

///Triggers on COMSIG_MOB_ATTACK_RANGED. Usually handles stuff like picking up items at range.
/datum/mutation/human/telekinesis/proc/on_ranged_attack(mob/source, atom/target)
	SIGNAL_HANDLER
	if(is_type_in_typecache(target, blacklisted_atoms))
		return
	if(!tkMaxRangeCheck(source, target) || source.z != target.z)
		return
	return target.attack_tk(source)
