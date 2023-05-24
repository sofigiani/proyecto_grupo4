extends CharacterBody2D
var screen_size # Tamaño de la ventana

const GRAVITY = 200.0

func _physics_process(delta):
	move_and_collide(Vector2(0, 1)) # Move down 1 pixel per physics frame
	var motion = velocity * delta
	move_and_collide(motion)
	
