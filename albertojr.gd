extends CharacterBody2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var GRAVITY = ProjectSettings.get_setting("physics/2d/default_gravity")
const JUMP_VELOCITY = 450.0
var es_derecha = true

func _on_top_body_entered(body):
	if body.get_name() == "Tito" or body.get_name() == "Tito_N":
		queue_free()

func _on_costados_body_entered(body):
	if body.get_name() == "Tito" or body.get_name() == "Tito_N":
		body.respawn()
		
func _on_patas_body_entered(body):
	if body.get_name() == "Tito" or body.get_name() == "Tito_N":
		body.respawn()



func _on_Timer_timeout():
	print(str($Timer.wait_time) + " second(s) finished")
	
func jump():
	velocity.y = -700
	
func jump_cut():
	if velocity.y < -100:
		velocity.y = -100
		
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	if is_on_floor():
		velocity.y = JUMP_VELOCITY
	move_and_slide()

func repeat_me():
	position.y -= 100

func _ready():
	# Create a timer node
		var timer = Timer.new()

	# Set timer interval
		timer.set_wait_time(2.0)

	# Set it as repeat
		timer.set_one_shot(false)

	# Connect its timeout signal to the function you want to repeat
		timer.connect("timeout", repeat_me)

	# Add to the tree as child of the current node
		add_child(timer)

		timer.start()

#func _saltar():



#func repeat_me():
   # print("Loop")


