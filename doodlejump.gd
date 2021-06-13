extends Node2D
var camera

# Declare member variables here. Examples:
var platform_solid = preload('res://scenes/Platform Solid.tscn')
var maxY = -3000
var y
var screen_width

# Called when the node enters the scene tree for the first time.
func _ready():
	camera = get_node("Camera2D")
	randomize()
	y = 0
	screen_width = get_viewport_rect().size.x
	create_platforms()
		 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if camera.position.y < maxY + 1000:
		maxY -= 3000
		create_platforms()
	
	
func create_platforms():
	randomize()
	while y > maxY:
		var platform = platform_solid.instance()
		platform.position = Vector2(rand_range(-screen_width/2 + 50, screen_width/2 - 50), y)
		add_child(platform)

		y -= rand_range(20,80)
	
