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
	"?0",
	"stayed on track I see",
	"The end",
	"lol nope",
	"?2",
	"nein",

])

var questions = PackedStringArray([
	"Question 1",
	"Question 2",
	"Question 3",
	"Question 4",
	"Question 5"
])

var endings = PackedStringArray([
	"Ending 1",
	"Ending 2",
	"Ending 3",
	"Ending 4",
	"Ending 5",
	"Ending 6"
])
