/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B2BA2BA
/// @DnDArgument : "code" "/* This code moves you to the victory screen if you have completed all the questions in the quiz. It does this by checking the variable "global.Question" to see which value it is on. If the Value is 6 (The amount of questions on the quiz), this code will move you to the next room, which is the Victory screen.*\"
/* This code moves you to the victory screen if you have completed all the questions in the quiz. It does this by checking the variable "global.Question" to see which value it is on. If the Value is 6 (The amount of questions on the quiz), this code will move you to the next room, which is the Victory screen.*\/**/

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61345C68
/// @DnDArgument : "var" "global.QuestionNumber"
/// @DnDArgument : "value" "6"
if(global.QuestionNumber == 6)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7CBE391B
	/// @DnDParent : 61345C68
	room_goto_next();
}