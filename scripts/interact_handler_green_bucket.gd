extends Node


func handle_interact():
	var inventory = InteractManagerSingleton.inventory
	inventory.set_item(
		"green-bucket",
		load("res://textures/green_bucket.tres")
	)
