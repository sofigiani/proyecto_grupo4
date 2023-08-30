extends CharacterBody2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var velocity = Vector2(100,0) 

#func _physics_process(delta):
#	velocity.y += 7
#	
#	if is_on_wall():
#			velocity.x *= -1
#			$shrmp.flip_h = ! $shrmp.flip_h
			
#	move_and_slide(velocity, Vector2(0, -1))


func _on_top_body_entered(body):
	if body.get_name() == "Tito":
		queue_free()


func _on_costados_body_entered(body):
	if body.get_name() == "Tito":
		body.respawn()


func _on_dia_pressed():
	get_tree().change_scene_to_file("res://node_2d.tscn")
