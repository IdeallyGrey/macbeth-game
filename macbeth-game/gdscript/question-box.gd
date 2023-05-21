extends RichTextLabel

func _ready():
	text = ""

func _on_question_panel_visibility_changed():
	text = GV.question
