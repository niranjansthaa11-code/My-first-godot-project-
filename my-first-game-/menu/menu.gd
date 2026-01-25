extends Control
var spwan_time=1



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().set_pause(false) 
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	Global.enemies_killed=0
	var sound_doit=preload("res://do_it.tscn")
	var sound_scence=sound_doit.instantiate()
	get_parent().add_child(sound_scence)
	Global.spwan_time = spwan_time
	get_tree().change_scene_to_file("res://main.tscn")
	
	
	
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_difficutly_item_selected(index) :
	var selected_difficulty =$VBoxContainer/difficutly.get_item_text(index)
	match selected_difficulty:
		"Easy":
			spwan_time=2
		"Medium":
			spwan_time=1
		"Hard":
			spwan_time=0.5
		"Super_Hard":
			spwan_time=0.25
		"Impossible":
			spwan_time=0.1
	
	
	
	pass # Replace with function body.
