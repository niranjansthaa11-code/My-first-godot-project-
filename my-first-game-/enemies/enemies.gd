class_name Enemy
extends Area2D

var speed:int = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	position=Vector2(randf_range(0,400),0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) :
	position.y+=speed*delta
	


func _on_area_entered(area: Area2D) -> void:
	if area.name=="fires_area":
		var sound_vfx=preload("res://sound.tscn")
		var sound_scence=sound_vfx.instantiate()
		
		get_parent().add_child(sound_scence)
		sound_scence.global_position = global_position


		area.get_parent().queue_free()  
		queue_free() 
		
		
	
	pass # Replace with function body.
