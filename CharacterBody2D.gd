extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -450.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	anim.play("default")

func _physics_process(delta):
	# Add the gravity.
	
	
	
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left"):
		anim.play("walk")
	else:
		anim.play("default")
		
	if Input.is_action_pressed("ui_accept"):
		anim.play("jump")
	
	
	
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED) 
		
	if direction != 0:
		$AnimatedSprite2D.flip_h = (direction == -1)
	
	move_and_slide()

func respawn():
	position.x = 34
	position.y = 9
