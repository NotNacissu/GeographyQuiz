/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F77519A
/// @DnDArgument : "code" "/* Both of these "if variables" will check if you have clicked the correct buttons for questions 1 and 5. It does this by checking the "global.QuestionNumber" as this variable knows what question you are on. If the question number is equal to 1 or 5, you will proceed to the next question as it increases the values of variable "global.Text" and "global.QuestionNumber". However, if you press this button on any other question, it will go to the "else" command and reset your game.*\"
/* Both of these "if variables" will check if you have clicked the correct buttons for questions 1 and 5. It does this by checking the "global.QuestionNumber" as this variable knows what question you are on. If the question number is equal to 1 or 5, you will proceed to the next question as it increases the values of variable "global.Text" and "global.QuestionNumber". However, if you press this button on any other question, it will go to the "else" command and reset your game.*\/**/

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50A02C32
/// @DnDArgument : "var" "global.QuestionNumber"
/// @DnDArgument : "value" "1"
if(global.QuestionNumber == 1)
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
	/// @DnDHash : 379F2AEE
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
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46AD785B
	/// @DnDParent : 1CFC5102
	/// @DnDArgument : "var" "global.QuestionNumber"
	/// @DnDArgument : "value" "5"
	if(global.QuestionNumber == 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17550914
		/// @DnDParent : 46AD785B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.Text"
		global.Text += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A99A619
		/// @DnDParent : 46AD785B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.QuestionNumber"
		global.QuestionNumber += 1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 290248AA
		/// @DnDParent : 46AD785B
		/// @DnDArgument : "code" "/* This code will cause the game to restart if you press this button on the wrong question.*\ "
		/* This code will cause the game to restart if you press this button on the wrong question.*\ /**/
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 37E6E998
	/// @DnDParent : 1CFC5102
	else
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 724D5C3F
		/// @DnDParent : 37E6E998
		game_restart();
	}
}