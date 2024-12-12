extends Sprite2D

const spin_speed = 1
var is_spinning = true

func spin():
	is_spinning = true
	

func stop():
	is_spinning = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_spinning:
		rotate(delta * spin_speed)
