extends Node

func handle_interact():
	var inventory = InteractManagerSingleton.inventory
	inventory.set_item(
		"blue-bucket",
		load("res://textures/blue_bucket.tres")
	)
