extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	$Label.visible = true
	InteractManagerSingleton.active_interactable = self


func _on_body_exited(body: Node2D) -> void:
	$Label.visible = false
	InteractManagerSingleton.active_interactable = null


func handle_interact(player) -> void:
	var child_node = $InteractHandler # Replace with how you access the child node
	if child_node and child_node.has_method("handle_interact"):
		child_node.handle_interact()
