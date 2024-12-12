extends Node
@onready var machine: Node2D = $"../../../../Machine"

func handle_interact():
	machine.turn_off()
