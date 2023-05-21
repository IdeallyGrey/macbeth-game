extends RichTextLabel

func _ready():
	text = ""

func _on_question_panel_visibility_changed():
	if GV.current_question != null:
		text = GV.questions[GV.current_question]
