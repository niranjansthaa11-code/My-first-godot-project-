extends Node2D

var direction:int = 0
var speed:int =500
var bullet_fire = preload("res://fires_red.tscn")
var shoot_time:=1
var shoot_count=0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("shoot") and shoot_count>shoot_time:
		
		
	if Input.is_action_pressed("move_element_left"):
		direction=-1
	elif Input.is_action_pressed("move_element_right"):
		direction= 1
	else:
		direction =0
	position.x+= direction*delta*speed
	
	#for protecting the player from going outside the boundary
	var width_scr = get_viewport_rect().size.x
	 #in my words the ed 
	#clamp commands stop the person from going beyond the screen
	#and the position.x is position of the player and
	#0 is the inital point i.e (left wall cause it is like a origin 
	#the width_scr is the position of the right wall that we declar
	position.x = clamp(position.x,0,width_scr)
	
	
