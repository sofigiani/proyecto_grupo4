extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	_cambio_automatic()
	pass
	
func _cambio_automatic():
	var time = Time.get_time_dict_from_system();
	var hour = time.hour
	
	if hour > 19 or hour < 10:
		get_tree().change_scene_to_file("res://noche.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
