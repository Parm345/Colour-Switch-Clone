extends RigidBody2D

export var extra_gravity = 500
export var jump_force = 500

#Colours
var Purple = Color(0.54902,0.07451,0.984314,1)
var Cyan = Color(0.207843,0.886275,0.94902,1)
var Magenta = Color(1,0,0.501961,1)
var Yellow = Color(0.964706,0.87451,0.054902,1)

var currentColour = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_mode(RigidBody2D.MODE_KINEMATIC)
	set_applied_force(Vector2(0, extra_gravity))
	set_physics_process(true)
	set_random_colour()

func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		self.set_mode(RigidBody2D.MODE_RIGID)
		set_axis_velocity(Vector2(0, -jump_force))

func set_random_colour():
	randomize()
	var index = randi() % 4
	
	match(index):
		0:
			currentColour = "Cyan"
			$Sprite.set_modulate(Cyan)
		1:
			currentColour = "Yellow"
			$Sprite.set_modulate(Yellow)
		2:
			currentColour = "Magenta"
			$Sprite.set_modulate(Magenta)
		3:
			currentColour = "Purple"
			$Sprite.set_modulate(Purple)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
