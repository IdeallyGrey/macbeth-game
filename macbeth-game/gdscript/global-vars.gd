extends Node

var current_line = -1
var current_image = 0
var on_screen_text = ""
var current_question = null
var answer = null
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

var questions = PackedStringArray([
	"Question 1",
	"Question 2",
	"Question 3",
	"Question 4",
	"Question 5"
])

var alternate_endings = PackedStringArray([
	"Ending 1",
	"Ending 2",
	"Ending 3",
	"Ending 4",
	"Ending 5",
])
