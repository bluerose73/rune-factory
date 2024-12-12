extends Node

@onready var machine: Node2D = $"../.."

func handle_interact() -> void:
	var inventory = InteractManagerSingleton.inventory
	
	if machine.has_missile:
		inventory.set_item("missile", load("res://assets/kenny-space-shooter/playerShip1_blue.png"))
		machine.remove_filling()
	elif inventory.get_item_name() == "blue-bucket":
		machine.fill("blue")
