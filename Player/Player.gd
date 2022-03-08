extends KinematicBody2D

var movement_speed = 200
var bulletSource = preload ("res://Bullet/Bullet.tscn")

func _ready():
	set_process(true)
	set_physics_process(true)
	$Area2D.connect("area_entered",self, "colliding")
	$Area2D.connect("area_exited",self, "_not_colliding")
	

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(0, -movement_speed * delta))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(0, movement_speed * delta))

func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var bulletInstance = bulletSource.instance()
		bulletInstance.position = Vector2(position.x, position.y-20)
		get_tree().get_root().add_child(bulletInstance)

func _colliding(area):
	pass
	
func _not_colliding(area):
	pass
