#define ICON_COMPUTERS_PATH 'modular_alliance/modules/original_editing/icons/obj/computer.dmi'
#define ICON_COMPUTER_STOCK_PARTS_PATH 'modular_alliance/modules/original_editing/icons/obj/stock_parts.dmi'
#define ICON_MODULAR_CONSOLE_PATH 'modular_alliance/modules/original_editing/icons/obj/modular_console.dmi'

/obj/machinery/computer
	icon = ICON_COMPUTERS_PATH

//**********************************************************************************************
//Exceptions. Objects are inherited from computers, but icons are contained in a different file.
//To be fixed in the future
/obj/machinery/computer/bsa_control
	icon = 'icons/obj/machines/particle_accelerator.dmi'

/obj/machinery/computer/auxiliary_base
	icon = 'icons/obj/terminals.dmi'
//**********************************************************************************************

/obj/structure/frame/computer
	icon = ICON_COMPUTER_STOCK_PARTS_PATH

/obj/machinery/modular_computer/console
	icon = ICON_MODULAR_CONSOLE_PATH

#undef ICON_COMPUTERS_PATH
#undef ICON_COMPUTER_STOCK_PARTS_PATH
#undef ICON_MODULAR_CONSOLE_PATH
