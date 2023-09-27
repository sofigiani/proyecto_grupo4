extends CharacterBody2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var GRAVITY = ProjectSettings.get_setting("physics/2d/default_gravity")
const JUMP = 25


func _on_top_body_entered(body):
	if body.get_name() == "Tito":
		queue_free()

func _on_costados_body_entered(body):
	if body.get_name() == "Tito":
		body.respawn()
		
		
func _on_Timer_timeout():
	print(str($Timer.wait_time) + " second(s) finished")
	
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	#velocity = Vector2.ZERO
	if (Input.is_action_just_pressed("ui_up")):
		velocity.y -= 25
		#$Timer.start(8)
	move_and_slide()



		

	#func _ready():
	# Create a timer node
		#var timer = Timer.new()

	# Set timer interval
		#timer.set_wait_time(1.0)

	# Set it as repeat
		#timer.set_one_shot(false)

	# Connect its timeout signal to the function you want to repeat
		#timer.connect("timeout", self, "repeat_me")

	# Add to the tree as child of the current node
		#add_child(timer)

		#timer.start()

#func _saltar():



#func repeat_me():
   # print("Loop")
