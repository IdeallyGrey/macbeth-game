extends Panel

func _ready():
	set_visible(true)

func _process(_delta):
	if GV.current_question == null:
		set_visible(true)
	else:
		set_visible(false)
