/*
/datum/language_holder
	/// Understood languages.
	var/list/understood_languages = list(/datum/language/common = list(LANGUAGE_MIND))
	/// A list of languages that can be spoken. Tongue organ may also set limits beyond this list.
	var/list/spoken_languages = list(/datum/language/common = list(LANGUAGE_ATOM))
	/// A list of blocked languages. Used to prevent understanding and speaking certain languages, ie for certain mobs, mutations etc.
	var/list/blocked_languages = list()
	/// If true, overrides tongue limitations.
	var/omnitongue = FALSE
	/// Handles displaying the language menu UI.
	var/datum/language_menu/language_menu
	/// Currently spoken language
	var/selected_language
	/// Tracks the entity that owns the holder.
	var/atom/owner
*/

//Temporary human language assignment for tests
/datum/language_holder
	understood_languages = list(/datum/language/human = list(LANGUAGE_ATOM))
	spoken_languages = list(/datum/language/human = list(LANGUAGE_ATOM))

/datum/language_holder/human
	understood_languages = list(/datum/language/human = list(LANGUAGE_ATOM))
	spoken_languages = list(/datum/language/human = list(LANGUAGE_ATOM))

/datum/language_holder/asari
	understood_languages = list(/datum/language/thessian = list(LANGUAGE_ATOM))
	spoken_languages = list(/datum/language/thessian = list(LANGUAGE_ATOM))

/datum/language_holder/quarian
	understood_languages = list(/datum/language/khelish = list(LANGUAGE_ATOM))
	spoken_languages = list(/datum/language/khelish = list(LANGUAGE_ATOM))
