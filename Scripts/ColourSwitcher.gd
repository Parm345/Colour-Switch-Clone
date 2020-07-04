extends Area2D

onready var global = $"/root/Global"

func _on_ColourSwitcher_body_entered(body):
	global.change_colour = true
	queue_free()
