extends Panel

func _ready():
	set_visible(false)

func _process(_delta):
	if GV.current_question != -1:
		set_visible(true)
		GV.current_image = -1
	else:
		set_visible(false)

func _on_button_a_pressed():
	GV.current_question = -1
	GV.answer = "a"

func _on_button_b_pressed():
	GV.current_question = -1
	GV.answer = "b"
