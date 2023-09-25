extends CharacterBody2D

#var velocity = Vector2(100,0)

func _physics_process(delta):
	velocity.y += 7
	
	if is_on_wall():
		velocity.x *= -1
		$Puflle.flip_h = ! $Puflle.flip_h
	#move_and_slide(velocity, Vector2(0, -1))


func _on_arriba_body_entered(body):
	pass # Replace with function body.


func _on_costado_body_entered(body):
	pass # Replace with function body.
