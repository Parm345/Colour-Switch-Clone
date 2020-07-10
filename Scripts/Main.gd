extends Node2D

onready var global = $"/root/Global"

export (PackedScene) var colour_circle
export (PackedScene) var switch_circle

var spawner_distance = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var switch = switch_circle.instance() 
	add_child(switch)
	switch.position = Vector2(240, -720)
	
	spawner_distance = $Player.position.y - $ObjectSpawnLocation.position.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	$ObjectSpawnLocation.position.y = $Player.position.y - spawner_distance
	if global.spawnable == true:
		spawnSwitch()
	

func spawnSwitch():
	var switch = switch_circle.instance()
	add_child(switch)
	switch.position = $ObjectSpawnLocation.position
	global.spawnable = false
	
	
