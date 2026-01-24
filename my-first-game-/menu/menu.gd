extends Control




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().set_pause(false) 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	var sound_doit=preload("res://do_it.tscn")
	var sound_scence=sound_doit.instantiate()
	get_parent().add_child(sound_scence)
	
	get_tree().change_scene_to_file("res://main.tscn")
	
	
	
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
