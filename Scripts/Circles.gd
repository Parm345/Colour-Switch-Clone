extends Node2D

onready var global = $"/root/Global"

export var rot_speed = 75

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	rotate(deg2rad(rot_speed * delta))

func collision_result(colour):
	global.colliding = true
	global.colour = colour

func _on_Cyan_body_entered(body):
	collision_result("Cyan")

func _on_Yellow_body_entered(body):
	collision_result("Yellow")

func _on_Magenta_body_entered(body):
	collision_result("Magenta")

func _on_Purple_body_entered(body):
	collision_result("Purple")
