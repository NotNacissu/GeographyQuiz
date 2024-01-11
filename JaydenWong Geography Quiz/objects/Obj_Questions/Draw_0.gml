/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 163A0AAC
/// @DnDArgument : "code" "/* This line of code will be used to display the questions.*\ "
/* This line of code will be used to display the questions.*\ /**/

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5C27085B
/// @DnDArgument : "font" "Fnt_Questions"
/// @DnDSaveInfo : "font" "da89f50b-d017-4883-92e8-7640204296d7"
draw_set_font(Fnt_Questions);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33429406
/// @DnDArgument : "code" "/* This line of code gets the text from the "Obj_TextSetup" and displays it ingame. It then chooses which text to display with the "global.Text" variable as this variable value is what question you are on.*\  "
/* This line of code gets the text from the "Obj_TextSetup" and displays it ingame. It then chooses which text to display with the "global.Text" variable as this variable value is what question you are on.*\  /**/

/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 657C2968
/// @DnDArgument : "assignee" "optionsTemp"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.Questions"
/// @DnDArgument : "index" "global.Text"
var optionsTemp = ds_list_find_value(global.Questions, global.Text);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0FC34036
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 60A91D9D
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "optionsTemp"
draw_text(x, y,  + string(optionsTemp));