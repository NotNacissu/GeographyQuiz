/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18BFE794
/// @DnDArgument : "code" "/* This line of code draws out the text onto the button. It does this by getting the text from the "global.Button4Options" list. it then draws it with the "Draw Value" command. the "Set Text Allignment" command alligns the text to the centre of the button. The "Set Font" command sets the text to one of the fonts I have created in the "Fonts" tab. "
/* This line of code draws out the text onto the button. It does this by getting the text from the "global.Button4Options" list. it then draws it with the "Draw Value" command. the "Set Text Allignment" command alligns the text to the centre of the button. The "Set Font" command sets the text to one of the fonts I have created in the "Fonts" tab. /**/

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3C911FCC
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 22E8E599
/// @DnDArgument : "font" "Fnt_ButtonOptions"
/// @DnDSaveInfo : "font" "e78d2b53-854b-4e27-9200-9833529d55b4"
draw_set_font(Fnt_ButtonOptions);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 47EEBE44
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 0577D878
/// @DnDArgument : "assignee" "optionsTemp"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.Button4Options"
/// @DnDArgument : "index" "global.Text"
var optionsTemp = ds_list_find_value(global.Button4Options, global.Text);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 010F5D4F
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "optionsTemp"
draw_text(x, y,  + string(optionsTemp));