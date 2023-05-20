extends Sprite2D

func _ready():
	set_visible(false)

func _process(_delta):
	if GlobalVars.current_image == get_meta("panel_id"):
		set_visible(true)
	else:
		set_visible(false)
