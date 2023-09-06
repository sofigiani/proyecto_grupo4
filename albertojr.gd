extends CharacterBody2D

func _on_top_body_entered(body):
	if body.get_name() == "Tito":
		queue_free()


func _on_costados_body_entered(body):
	if body.get_name() == "Tito":
		body.respawn()

#var velocity = Vector2(100,0)
func _physics_process(delta):
	velocity.y += 7
	
	if is_on_wall():
		velocity.x += -1
		$enemy.flip.h - ! $enemy.flip.h
		
	#move_and_slide (velocity, Vector2(0,-1))
