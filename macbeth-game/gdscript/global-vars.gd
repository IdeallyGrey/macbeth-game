extends Node

var current_line = -1
var current_image = 0
var on_screen_text = ""
var current_question = null
var answer = null
var currently_typing = false

# The script. Strings beginning with "!" will be skipped and instead change current image, string beginning with "?" will trigger a question. Known issue: cannot trigger image directly after question
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
"Suddenly, three dark figures emerge from the mist.",
"!4",
"\"All hail, Macbeth! Hail to thee, Thane of Glamis!\"",
"\"All hail, Macbeth! Hail to thee, Thane of Cawdor!\"",
"\"All hail, Macbeth, that shalt be king hereafter!\"",
"?0",
"Several days later...",
"You are standing at the doors to your manor's grand hall. In the distance, you can make out small, moving, dark specks.",
"!5",
"It must be King Duncan and his entourage.",
"!2",
"You think of your wife's--Lady Macbeth's--words, \"...I do fear thy nature; It is too full of the milk of human kindess\"",
"!5",
"You stare out over the hills in thought, before making your way down to the gate, to greet the approaching party.",
"!0",
"That evening...",
"You are making your way to the room where Duncan, your King, is resting.",
"You don't notice when it first appears, a tangable figment of your immagination.",
"The metal blade gleams coolly in the moonlight, the leather of the hilt looks frayed and worn. The only thing 'fresh' about the weapon, is the trickle of crimson blood that dots the edge.",
"The dagger talks to you, its simple presence carrying more meaning than any vocal message.",
"You draw the blade at your side, and quietly push open the door.",
"?1",
"[ At this point, there'd be two more choices yet: do you have Banquo and Fleance murdered, and how you react to the news of Macduff fleeing. ]",
"[ Here however, would be the final choice, during the fatal duel between Macbeth and Macduff: ]",






"?4",
"You duel is short--and your will to try to fight back is shorter still.",
"Macduff's sword pierces your gut, and your vision begins to blur.",
"!6",
"...",
"!0",
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

"King Duncan lies on the bed, covered in a white blanket; his servants lie on the floor, covered in spiced wine.
You approach his side.

A. Hesitate for a moment, then leave the way you came.
B. Plunge the dagger into his chest.",

"Question 3",

"He shall pay sorely for this! Soldiers! March on his castle…

A. ...and loot their riches, but attack only the guards.
B. ...and raze it to the ground, leave no survivors.",


"\"Then yield thee, coward,\" Macduff offers you your life.

A. Accept him.
B. Deny yourself. "
])

var endings = PackedStringArray([
"...and everyone lived happily ever after.",
"You softly close the door behind you. In place of a floating dagger, a golden crown levitates in the hallway, your psyche taunting you. At last you return to your chamber, and slowly begin to put the week's events behind you.",
"Ending 3",
"Ending 4",
"You realize that there is a way out, there is a light to reach for... if only those who you killed along the way could reach for the same light.",
""
])
