extends Panel



func _ready():
	set_visible(false)

func _process(_delta):
	if GV.question != "":
		set_visible(true)
		GV.current_image = -1
	else:
		set_visible(false)
