extends Node

var active_interactable = null
var player = null
var inventory = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func set_player(player) -> void:
	self.player = player
	
func set_inventory(inventory) -> void:
	self.inventory = inventory

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		if active_interactable:
			active_interactable.handle_interact(player)
