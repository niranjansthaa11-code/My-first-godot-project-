extends Node
var enemies_scence=preload("res://enemies/enemies.tscn")
var eni
var exit_scence=preload("res://enemies/last_exit_button.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_parent().get_node("the_death_boundary").area_entered.connect(_end)
	var timer =Timer.new()
	add_child(timer)
	timer.wait_time=1.5
	timer.timeout.connect(_create_enemy)
	timer.start() 
	
func _create_enemy():
	var enemy=enemies_scence.instantiate()
	get_parent().get_node("Enemies").add_child (enemy)
	
func _end(area:Node):
	var exit=exit_scence.instantiate()
	if area is Enemy:
		get_tree().set_pause(true)
		get_parent().get_node("exit_control").add_child(exit)
	 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
