extends Node2D

onready var global = $"/root/Global"

export (PackedScene) var colour_circle
export (PackedScene) var switch_circle

# Called when the node enters the scene tree for the first time.
func _ready():
	var switch = switch_circle.instance() 
	add_child(switch)
	switch.position = Vector2(240, -720)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	pass
	#if global.spawnable == true:
		#var circle = colour_circle.instance()
		#add_child(circle)
		#circle.position = $Player/SpawingArea.position + Vector2(240,0)
		#global.spawnable == false
		
func _on_Player_spawn_object():
	if global.spawn_overide == false:
		var circle = colour_circle.instance()
		add_child(circle)
		circle.position = $Player/SpawingArea.position + Vector2(240,0)
		circle.scale = Vector2(0.6,0.6)
	
	global.spawn_overide = false
