extends RichTextLabel

# Every frame
func _process(_delta):
	# If the text currently shown does not match the text that should be shown
	if text != GV.on_screen_text:
		# Reset visible characters and set text
		visible_characters = 0
		text = GV.on_screen_text

#		GV.currently_typing = true		REMEMBER TO UNCOMMENT THIS LINE BEFORE SHIPPING

		# Show one more character at a time until full text shown
		while visible_ratio < 1:
			visible_characters += 1
			await get_tree().create_timer(0.005).timeout
		GV.currently_typing = false
