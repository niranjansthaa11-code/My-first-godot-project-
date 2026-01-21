extends Node2D

var direction:int = 0
var speed:int =400


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_element_left"):
		direction=-1
	elif Input.is_action_pressed("move_element_right"):
		direction= 1
	else:
		direction =0
	position.x+= direction*delta*speed
	
	
