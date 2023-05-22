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
	"The quick brown fox jumped over the sleeping dog.",
	"!001",
	"Statue",
	"Still statue",
	"!002",
	"Not any more!",
	"Question time!",
	"?0",
	"Stayed on track I see",
	"Now, next question!",
	"?2",
	"Even though you were given so many chances to turn back; to confess your sins; to stop the bloodshed; in the end, you still chose violence.",
	"You chose murder.",
	"Greed",
	"Suspicion"

])

var questions = PackedStringArray([
	"Do you heed the prophesy of the witches? Or do you choose to keep these thoughts out of your mind?

A. I will ignore these servants of the supernatural.
B. King... you say?",
	"Question 2",
	"Question 3",
	"Question 4",
	"q5"
])

var endings = PackedStringArray([
	"Ending 1",
	"Ending 2",
	"Ending 3",
	"Ending 4",
	"Ending 5",
	"Ending 6"
])
