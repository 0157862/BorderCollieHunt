extends KinematicBody2D

var movement_speed = 200
var bulletSource = preload ("res://Bullet/Bullet.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)



func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(movement_speed * delta, 0))
