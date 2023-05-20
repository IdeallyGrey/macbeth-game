extends Node

var current_line = -1
var current_image = 0
var on_screen_text = ""

# The script. Strings beginning with "!" will be skipped and instead change current image.
var game_script = PackedStringArray([
	"Blank",
	"!001",
	"Statue",
	"Still statue",
	"!002",
	"Blank again",
	"The end"
])
