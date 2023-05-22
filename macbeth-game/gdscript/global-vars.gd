extends Node

var current_line = -1
var current_image = 0
var on_screen_text = ""
var current_question = null
var answer = null
var currently_typing = false

# The script. Strings beginning with "!" will be skipped and instead change current image.
var game_script = PackedStringArray([
	"Hello, the wethergregergegerwrg",
	"The quick brown fox 
	
	jumped over the sleeping dog.",
	"!002",
	"Statue",
	"Still statue",
	"!001",
	"Not any more!",
	"Question time!",
	"?3",
	"Stayed on track I see",
	"Now, next question!",
	"?2",
	"Even though you were given so many chances to turn back; to confess your sins; to stop the bloodshed; in the end, you still chose violence.",

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
