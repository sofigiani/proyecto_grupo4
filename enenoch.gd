extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	
func _on_top_body_entered(body):
	if body.get_name() == "Titonoch":
		queue_free()


func _on_costados_body_entered(body):
	if body.get_name() == "Titonoch":
		body.respawn()
