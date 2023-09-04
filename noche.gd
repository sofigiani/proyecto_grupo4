extends Node2D

func _cambio_automatic():
	var time = Time.get_time_dict_from_system();
	var hour = time.hour
	
	if hour < 19 or hour > 8:
		get_tree().change_scene_to_file("res://node_2d.tscn")

		
		#else get_tree().change_scene_to_file("res://node_2d.tscn")
# Called when the node enters the scene tree for the first time.

func _ready():
	
	pass
	
	
func _process(delta):
	pass

func _on_dia_pressed():
	get_tree().change_scene_to_file("res://node_2d.tscn")
	
func _on_autom_pressed():
	print("siiii")
	_cambio_automatic()



