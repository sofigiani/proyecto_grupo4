extends Node2D

func _cambio_automatico():
	var time = Time.get_time_dict_from_system();
	var hour = time.hour
	
	if hour > 19 or hour < 8:
		get_tree().change_scene_to_file("res://noche.tscn")
	
	
	
func _ready():
	_cambio_automatico()
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_noche_pressed():
	get_tree().change_scene_to_file("res://noche.tscn")


func _on_auto_pressed():
	_cambio_automatico()


func _on_piso_body_entered(body):
	if body.get_name() == "Tito" or body.get_name() == "Tito_N":
		body.respawn()


func _on_fin_body_entered(body):
	if body.get_name() == "Tito" or body.get_name() == "Tito_N":
		body.respawn()


 
func _on_meta_body_entered(body):
	$meta/Label.show()
	
