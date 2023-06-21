extends Node

@export var health : float = 10 :
	get:
		return health
	set(value):
		SignalBus.emit_signal(**)
		health = value

func hit(damage : int):
	health -= damage
	
	if (health <= 0):
		get_parent().queue_free()
