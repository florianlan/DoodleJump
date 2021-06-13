extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var highscore
	if global.score > global.highscore:
		highscore = global.score
	else:
		highscore = global.highscore
	var temp = highscore as int
	text = "Your Highscore: " + temp as String


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
