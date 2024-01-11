/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FE13105
/// @DnDArgument : "code" "/* This "if variable" will check if you have clicked this button on question 2. if you do press this button on question 2, you will move to the next question as this is the correct answer for question 2. If, however, you press this button on any other question, it will go to the "else" command and restart your game as you have pressed the incorrect answer for that question.*\  "
/* This "if variable" will check if you have clicked this button on question 2. if you do press this button on question 2, you will move to the next question as this is the correct answer for question 2. If, however, you press this button on any other question, it will go to the "else" command and restart your game as you have pressed the incorrect answer for that question.*\  /**/

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50A02C32
/// @DnDArgument : "var" "global.QuestionNumber"
/// @DnDArgument : "value" "2"
if(global.QuestionNumber == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17E730EE
	/// @DnDParent : 50A02C32
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.Text"
	global.Text += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03C1FEA1
	/// @DnDParent : 50A02C32
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.QuestionNumber"
	global.QuestionNumber += 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1CFC5102
else
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 1BD476AA
	/// @DnDParent : 1CFC5102
	game_restart();
}