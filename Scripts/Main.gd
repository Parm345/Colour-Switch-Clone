extends Node2D

export (PackedScene) var colour_circle
export (PackedScene) var switch_circle

# Called when the node enters the scene tree for the first time.
func _ready():
	#$Player/Position2D.position.x = 240
	var switch = switch_circle.instance() 
	add_child(switch)
	switch.position = Vector2(240, -720)
	#switch.position = $Player/Position2D.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
