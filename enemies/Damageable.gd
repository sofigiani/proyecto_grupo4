extends Node

@export var health : float = 10

func hit(damage : int):
	health -= damage
	
	if (health <= 0):
		get_parent().queue_free()
