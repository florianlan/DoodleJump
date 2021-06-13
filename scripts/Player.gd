extends RigidBody2D


# Declare member variables here. Examples:
var sprite
export(NodePath) var path_camera
var camera
var screen_width

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_width = get_viewport_rect().size.x/2
	sprite = get_node("Sprite Right")
	camera = get_node(path_camera)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		sprite.set_flip_h(true)
		apply_impulse(Vector2(0, 0), Vector2(-600*delta, 0))
	if Input.is_action_pressed("ui_right"):
		sprite.set_flip_h(false)
		apply_impulse(Vector2(0, 0), Vector2(600*delta, 0))



func _on_Area2D_body_entered(body):
	if body.is_in_group('platform') and linear_velocity.y == 0:
		linear_velocity = Vector2(0, -500)
		$Jump.play()
	elif body.is_in_group('hole'):
		#$Lose.play()
		get_tree().change_scene("res://scenes/score_scene.tscn")



func out_of_screen():
	if position.x > screen_width:
		position = Vector2(-screen_width+20, position.y)
	elif position.x < -screen_width:
		position = Vector2(screen_width-20, position.y)
	if position.y > camera.position.y+400:
		#$Lose.play()
		get_tree().change_scene("res://scenes/score_scene.tscn")
	


