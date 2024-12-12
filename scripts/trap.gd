extends Node2D

@onready var indicator: Node2D = $Indicator
@onready var spike: Node2D = $Spike

var is_on = true

func turn_on() -> void:
	is_on = true
	indicator.turn_on()
	spike.turn_on()
	
	
func turn_off() -> void:
	is_on = false
	indicator.turn_off()
	spike.turn_off()
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
