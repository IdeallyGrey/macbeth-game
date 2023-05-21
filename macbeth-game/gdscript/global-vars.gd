extends Node

var current_line = -1
var current_image = 0
var on_screen_text = ""
var question = ""
var currently_typing = false

# The script. Strings beginning with "!" will be skipped and instead change current image.
var game_script = PackedStringArray([
	"The quick brown fox jumped over the sleeping dog. Shakespeare was not fat. At least I don't think so. He was maybe bald. Lol. Imagine being bald.",
	"!001",
	"Statue",
	"Still statue",
	"!002",
	"question time!",
	"?What is a cow?",
	"stayed on track I see",
	"The end"
])
