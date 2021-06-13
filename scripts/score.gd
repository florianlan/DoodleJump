extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var temp = global.score as int
	text = "Your Score: " + temp as String


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
