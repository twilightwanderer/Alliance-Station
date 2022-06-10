#define ICON_LANGUAGES_PATH 'modular_alliance/modules/modular_languages/icons/language.dmi'

/*
/datum/language
	var/name = "an unknown language"  // Fluff name of language if any.
	var/desc = "A language."          // Short description for 'Check Languages'.
	var/key                           // Character used to speak in language
	// If key is null, then the language isn't real or learnable.
	var/flags                         // Various language flags.
	var/list/syllables                // Used when scrambling text for a non-speaker.
	var/sentence_chance = 5      // Likelihood of making a new sentence after each syllable.
	var/space_chance = 55        // Likelihood of getting a space in the random scramble string
	var/list/spans = list()
	var/list/scramble_cache = list()
	var/default_priority = 0          // the language that an atom knows with the highest "default_priority" is selected by default.

	// if you are seeing someone speak popcorn language, then something is wrong.
	var/icon = 'icons/misc/language.dmi'
	var/icon_state = "popcorn"
*/

//Turning off TG languages
/datum/language/aphasia
	key = ""
	default_priority = 0

/datum/language/beachbum
	key = ""
	default_priority = 0

/datum/language/buzzwords
	key = ""
	default_priority = 0

/datum/language/calcic
	key = ""
	default_priority = 0

/datum/language/codespeak
	key = ""
	default_priority = 0

/datum/language/common
	key = ""
	default_priority = 0

/datum/language/draconic
	key = ""
	default_priority = 0

/datum/language/drone
	key = ""
	default_priority = 0

/datum/language/machine
	key = ""
	default_priority = 0

/datum/language/moffic
	key = ""
	default_priority = 0

/datum/language/monkey
	key = ""
	default_priority = 0

/datum/language/mushroom
	key = ""
	default_priority = 0

/datum/language/narsie
	key = ""
	default_priority = 0

/datum/language/nekomimetic
	key = ""
	default_priority = 0

/datum/language/piratespeak
	key = ""
	default_priority = 0

/datum/language/shadowtongue
	key = ""
	default_priority = 0

/datum/language/slime
	key = ""
	default_priority = 0

/datum/language/sylvan
	key = ""
	default_priority = 0

/datum/language/terrum
	key = ""
	default_priority = 0

/datum/language/uncommon
	key = ""
	default_priority = 0

/datum/language/voltaic
	key = ""
	default_priority = 0

/datum/language/xenocommon
	key = ""
	default_priority = 0

//The information and language descriptions are taken from here:
//https://cdn.fandom.com/wiki/Language
/datum/language/human
	name = "Alliance human languages"
	desc = "A set of three human \"working\" languages: English, Chinese, Russian, used by the System Alliance."
	key = "h"
	flags = TONGUELESS_SPEECH
	default_priority = 100
	syllables = list(
	"a", "ai", "an", "ang", "ao", "ba", "bai", "ban", "bang", "bao", "bei", "ben", "beng", "bi", "bian", "biao",
	"bie", "bin", "bing", "bo", "bu", "ca", "cai", "can", "cang", "cao", "ce", "cei", "cen", "ceng", "cha", "chai",
	"chan", "chang", "chao", "che", "chen", "cheng", "chi", "chong", "chou", "chu", "chua", "chuai", "chuan", "chuang", "chui", "chun",
	"chuo", "ci", "cong", "cou", "cu", "cuan", "cui", "cun", "cuo", "da", "dai", "dan", "dang", "dao", "de", "dei",
	"den", "deng", "di", "dian", "diao", "die", "ding", "diu", "dong", "dou", "du", "duan", "dui", "dun", "duo", "e",
	"ei", "en", "er", "fa", "fan", "fang", "fei", "fen", "feng", "fo", "fou", "fu", "ga", "gai", "gan", "gang",
	"gao", "ge", "gei", "gen", "geng", "gong", "gou", "gu", "gua", "guai", "guan", "guang", "gui", "gun", "guo", "ha",
	"hai", "han", "hang", "hao", "he", "hei", "hen", "heng", "hm", "hng", "hong", "hou", "hu", "hua", "huai", "huan",
	"huang", "hui", "hun", "huo", "ji", "jia", "jian", "jiang", "jiao", "jie", "jin", "jing", "jiong", "jiu", "ju", "juan",
	"jue", "jun", "ka", "kai", "kan", "kang", "kao", "ke", "kei", "ken", "keng", "kong", "kou", "ku", "kua", "kuai",
	"kuan", "kuang", "kui", "kun", "kuo", "la", "lai", "lan", "lang", "lao", "le", "lei", "leng", "li", "lia", "lian",
	"liang", "liao", "lie", "lin", "ling", "liu", "long", "lou", "lu", "luan", "lun", "luo", "ma", "mai", "man", "mang",
	"mao", "me", "mei", "men", "meng", "mi", "mian", "miao", "mie", "min", "ming", "miu", "mo", "mou", "mu", "na",
	"nai", "nan", "nang", "nao", "ne", "nei", "nen", "neng", "ng", "ni", "nian", "niang", "niao", "nie", "nin", "ning",
	"niu", "nong", "nou", "nu", "nuan", "nuo", "o", "ou", "pa", "pai", "pan", "pang", "pao", "pei", "pen", "peng",
	"pi", "pian", "piao", "pie", "pin", "ping", "po", "pou", "pu", "qi", "qia", "qian", "qiang", "qiao", "qie", "qin",
	"qing", "qiong", "qiu", "qu", "quan", "que", "qun", "ran", "rang", "rao", "re", "ren", "reng", "ri", "rong", "rou",
	"ru", "rua", "ruan", "rui", "run", "ruo", "sa", "sai", "san", "sang", "sao", "se", "sei", "sen", "seng", "sha",
	"shai", "shan", "shang", "shao", "she", "shei", "shen", "sheng", "shi", "shou", "shu", "shua", "shuai", "shuan", "shuang", "shui",
	"shun", "shuo", "si", "song", "sou", "su", "suan", "sui", "sun", "suo", "ta", "tai", "tan", "tang", "tao", "te",
	"teng", "ti", "tian", "tiao", "tie", "ting", "tong", "tou", "tu", "tuan", "tui", "tun", "tuo", "wa", "wai", "wan",
	"wang", "wei", "wen", "weng", "wo", "wu", "xi", "xia", "xian", "xiang", "xiao", "xie", "xin", "xing", "xiong", "xiu",
	"xu", "xuan", "xue", "xun", "ya", "yan", "yang", "yao", "ye", "yi", "yin", "ying", "yong", "you", "yu", "yuan",
	"yue", "yun", "za", "zai", "zan", "zang", "zao", "ze", "zei", "zen", "zeng", "zha", "zhai", "zhan", "zhang", "zhao",
	"zhe", "zhei", "zhen", "zheng", "zhi", "zhong", "zhou", "zhu", "zhua", "zhuai", "zhuan", "zhuang", "zhui", "zhun", "zhuo", "zi",
	"zong", "zou", "zuan", "zui", "zun", "zuo", "zu",
	"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
	"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
	"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
	"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi",
	"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
	"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
	"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
	"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi",
	"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
	"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
	"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
	"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi",
	"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
	"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
	"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
	"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi",
	"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
	"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
	"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
	"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi",
	"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
	"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
	"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
	"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi")
	icon = ICON_LANGUAGES_PATH
	icon_state = "alliance"

/datum/language/thessian
	name = "High Thessian"
	desc = "High Thessian is not really a language in the standard sense, but rather a set of rules that allows Asari to cobble together and use multiple local Asarian languages into one multilanguage so that they can easily communicate with each other."
	key = "t"
	default_priority = 90
	flags = TONGUELESS_SPEECH
	syllables = list(
	"yi", "ye", "wa", "wi", "wu", "we", "wyu", "va", "vi", "vu", "ve", "vo", "vya", "vyu", "vye", "vyo",
	"kye", "gye", "kwa", "kwi", "kwe", "kwo", "kwa", "gwa", "gwi", "gwe", "gwo", "gwa", "she", "je", "si", "zi",
	"tsa", "tsi", "tse", "tso", "tsyu", "ti", "tu", "tyu", "di", "du", "dyu", "nye", "hye", "bye", "si", "pye",
	"fa", "fi", "fe", "fo", "fo", "fyu", "fye", "fyo", "mye", "rye", "la", "li", "lu", "le", "lo", "lya")
	icon = ICON_LANGUAGES_PATH
	icon_state = "asari"

/datum/language/khelish
	name = "Khelish"
	desc = "A unified language quarians, forced to form after their expulsion from their native system."
	key = "k"
	default_priority = 90
	flags = TONGUELESS_SPEECH
	syllables = list(
	"ai", "ao", "ba", "bi", "bo", "se", "su", "so", "si",
	"li", "lo", "la", "vi", "vo", "te", "tu", "to", "ti",
	"ni", "no", "na", "ni", "no", "ge", "gu", "go", "gi",
	"ci", "co", "ca", "qi", "qo", "qe", "qu", "qo", "qi",
	"'")
	icon = ICON_LANGUAGES_PATH
	icon_state = "quarian"

#undef ICON_LANGUAGES_PATH
