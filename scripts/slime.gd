extends Node2D

@onready var ray_right: RayCast2D = $RayRight
@onready var ray_left: RayCast2D = $RayLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


const SPEED = 60

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		
	position.x += direction * SPEED * delta
