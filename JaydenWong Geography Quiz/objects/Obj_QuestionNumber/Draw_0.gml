/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B20C83C
/// @DnDArgument : "code" "/* This Code displays which question you are on ingame.It does this by drawing the value of the variable "global.QuestionNumber" as this variable knows which question you are on. *\"
/* This Code displays which question you are on ingame.It does this by drawing the value of the variable "global.QuestionNumber" as this variable knows which question you are on. *\/**/

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 71E2C144
/// @DnDArgument : "font" "Fnt_ButtonOptions"
/// @DnDSaveInfo : "font" "e78d2b53-854b-4e27-9200-9833529d55b4"
draw_set_font(Fnt_ButtonOptions);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6FB10B5A
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "caption" ""Question: ""
/// @DnDArgument : "var" "global.QuestionNumber"
draw_text(x, y, string("Question: ") + string(global.QuestionNumber));