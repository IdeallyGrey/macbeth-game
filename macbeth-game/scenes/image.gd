extends Sprite2D

func _process(_delta):
	if GV.current_image == get_meta("image_id"):
		set_visible(true)
	else:
		set_visible(false)
