extends Node

var current_line = -1
var current_image = 0
var on_screen_text = ""
var current_question = null
var answer = null
var currently_typing = false

# The script. Strings beginning with "!" will be skipped and instead change current image.
var game_script = PackedStringArray([
"You, and your close friend Banquo, are returning from the battlefield, where the two of you fought valiantly against the invading Norwegians. It has been a long week; though the battle only took the better part of a day, you've spent the last week at a soldier encampment.",
"You can't wait to be home.",
"!1",
"The two of you walk in silence for a while, taking in the landscape of the country you have just fought to protect.",
"A crow in some nearby shrubbery startles you from your revere.

An odd thought strikes you: the day appears both so fowl and fair.",
"!3",
"After a while longer, the terrain becomes a bit rockier; the shrubs become lower, seemingly sulking to the ground, and the shrill cry of a raven harshly compliments the setting.",
"The air cools suddenly, and a thick, palpable fog begins to roll in over the heath.",



"?4",
"You duel is short--and your will to try to fight back is shorter still.",
"Macduff's sword pierces your gut, and your vision begins to blur.",
"...",
"Even though you were given so many chances to turn back; to confess your sins; to stop the bloodshed; in the end, you still chose violence.",
"You chose evil.",
"Greed.",
"Fear.",
"Murder.",
"Selfishness.",
"...",
"That, is the real tragedy."
])

var questions = PackedStringArray([
"Do you heed the prophesy of the witches? Or do you choose to keep these thoughts out of your mind?

A. I will ignore these servants of the supernatural.
B. King... you say?",

"Question 2",

"Question 3",

"He shall pay sorely for this! Soldiers! March on his castle…

A. ...and loot their riches, but attack only the guards.
B. ...and raze it to the ground, leave no survivors.",

"Macduff offers you"
])

var endings = PackedStringArray([
"Ending 1",
"Ending 2",
"Ending 3",
"Ending 4",
" "
])
