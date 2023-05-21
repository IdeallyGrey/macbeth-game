extends Panel

func _ready():
	set_visible(true)

func _process(_delta):
	if GV.question == "":
		set_visible(true)
	else:
		set_visible(false)
