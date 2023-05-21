extends Node2D

func interpret_current_line():
		# If next line begins with "?": set current_question, run question func
		if GV.game_script[GV.current_line + 1].begins_with("?"):
			GV.current_line += 1
			GV.current_question = GV.game_script[GV.current_line].to_int()
		# If next line begins with "!", move to that line, set image to int. following the "!"
		elif GV.game_script[GV.current_line + 1].begins_with("!"):
			GV.current_line += 1
			GV.current_image = GV.game_script[GV.current_line].to_int()
		# Move to next line, set on-screen text to the line
		GV.current_line += 1
		GV.on_screen_text = GV.game_script[GV.current_line]

func game_over():
	get_tree().change_scene_to_packed(preload("res://scenes/end-menu.tscn"))

# Runs once when first loaded, so that game doesn't open to blank screen/text
func _ready():
	interpret_current_line()

# On every frame
func _process(_delta):
	# If space/left mouse is pressed, text is not currently being loaded, and its not in question mode
	if Input.is_action_just_pressed("ui_continue") and not GV.currently_typing and GV.current_question == null:
		# Check if there are more lines
		if GV.current_line + 1 < GV.game_script.size():
			interpret_current_line()
		else:
			game_over()

# Runs when question panel changed
func _on_question_panel_visibility_changed():
	if GV.answer == "a":
		pass
	elif GV.answer == "b" and GV.current_line + 1 == GV.game_script.size():
		pass
