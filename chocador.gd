extends CharacterBody2D



func _physics_process(delta):
	velocity.y += 7
	
	if is_on_wall():
		velocity.x *= -1
		$Puflle.flip_h = ! $Puflle.flip_h
		
	move_and_slide()


func _on_arriba_body_entered(body):
	if body.get_name() == "Tito" or body.get_name() == "Tito_N":
		queue_free()


func _on_costado_body_entered(body):
	if body.get_name() == "Tito" or body.get_name() == "Tito_N":
		body.respawn()
