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
	


func _on_area_entered(area: Area2D) -> void:
	if area.name=="fires_area":
		area.get_parent().queue_free()  
		queue_free() 
	
	pass # Replace with function body.
