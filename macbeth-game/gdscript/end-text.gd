extends RichTextLabel

func _ready():
	if GV.answer == "a":
		text = GV.endings[GV.current_question]
	elif GV.answer == "b":
		text = GV.endings[GV.endings.size() - 1]
