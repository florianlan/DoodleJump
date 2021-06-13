extends Node2D


# Declare member variables here. Examples:


# Called when the node enters the scene tree for the first time.
func _ready():
	var score = global.score
	var highscore = global.highscore
	if score > highscore:
		global.highscore = score
		highscore = score
	$Lose.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func start_new_game():
	get_tree().change_scene("res://scenes/doodlejump.tscn")
	
