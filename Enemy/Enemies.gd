extends Node2D
var speed=100

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)

func _physics_process(delta):
	global_position.x += speed * delta
