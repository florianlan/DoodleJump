extends Camera2D

# Declare member variables here. Examples:
export(NodePath) var path_player
var player


# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node(path_player)


func _process(delta):
	if player.position.y < position.y:
		position = Vector2(0, player.position.y)
		global.score = -position.y

