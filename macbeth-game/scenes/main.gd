extends Node2D

func _ready():
	pass

# On every frame
func _process(_delta):
	# If space/left mouse is pressed, and next line is valid
	if Input.is_action_just_pressed("ui_continue") and GV.current_line + 1 < GV.game_script.size():
		# If next line begins with "!", move to that line, set image to int following the "!"
		if GV.game_script[GV.current_line + 1].begins_with("!"):
			GV.current_line += 1
			GV.current_image = GV.game_script[GV.current_line].to_int()
		# Move to next line, set on screen text to the line
		GV.current_line += 1
		GV.on_screen_text = GV.game_script[GV.current_line]
