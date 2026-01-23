class_name Enemy
extends Area2D

var speed:int = 90
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	position=Vector2(randf_range(0,400),0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) :
	position.y+=speed*delta
	
