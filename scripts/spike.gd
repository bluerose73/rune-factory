extends Node2D

const speed = 1000.0

var is_detecting = true
var is_falling = false

func turn_on() -> void:
	is_detecting = true
	
func turn_off() -> void:
	is_detecting = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_falling:
		position.y += delta * speed


func _on_detection_body_entered(body: Node2D) -> void:
	if is_detecting:
		is_falling = true
