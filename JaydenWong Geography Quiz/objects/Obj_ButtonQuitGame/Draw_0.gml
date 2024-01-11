/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 424EFAA4
/// @DnDArgument : "code" "/* The command "Draw self" draws the button into the game.*\$(13_10)"
/* The command "Draw self" draws the button into the game.*\
/**/

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 570BB052
draw_self();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A96E6B6
/// @DnDArgument : "code" "/* This code will select which text to display ingame. It chooses from the list "global.ButtonOptions". We can set the value of the index to "0" as this text does not have to change. It will then draw the text with the "Draw Value" command. The text is then aligned onto the centre of the button with the "set text alignment* command. I then change the size and shape of the text with the "set font" command. the set font command chooses a font from the "Fonts" tab.*\"
/* This code will select which text to display ingame. It chooses from the list "global.ButtonOptions". We can set the value of the index to "0" as this text does not have to change. It will then draw the text with the "Draw Value" command. The text is then aligned onto the centre of the button with the "set text alignment* command. I then change the size and shape of the text with the "set font" command. the set font command chooses a font from the "Fonts" tab.*\/**/

/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 62EAF2A1
/// @DnDArgument : "assignee" "optionsTemp"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.ButtonOptions"
var optionsTemp = ds_list_find_value(global.ButtonOptions, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5EC09607
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "optionsTemp"
draw_text(x, y,  + string(optionsTemp));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7D4B9D0B
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3F202BB4
/// @DnDArgument : "font" "Fnt_ButtonOptions"
/// @DnDSaveInfo : "font" "e78d2b53-854b-4e27-9200-9833529d55b4"
draw_set_font(Fnt_ButtonOptions);