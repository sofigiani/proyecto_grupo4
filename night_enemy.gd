extends CharacterBody2D

func _on_top_body_entered(body):
	if body.get_name() == "Tito":
		queue_free()

func _on_costados_body_entered(body):
	if body.get_name() == "Tito":
		body.respawn()

