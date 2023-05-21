extends Panel

func _ready():
	set_visible(true)

func _process(_delta):
	if GV.current_question == -1:
		set_visible(true)
	else:
		set_visible(false)
