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
		sound_scence.global_position = global_position # it just make sound produc in a 3d like way 
		area.get_parent().queue_free()  
		Global.enemies_killed +=1
		
		var explosion = preload("res://explosion.tscn").instantiate()
		get_parent().add_child(explosion)# this make it explosion scence in main screen
		explosion.global_position = global_position ## adds where the ememy gets destroyed 
		

		queue_free() 
		
		
	
	pass # Replace with function body.
