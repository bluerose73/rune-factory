extends Area2D

@onready var timer: Timer = $Timer

var is_active = true

func turn_on():
	is_active = true
	
func turn_off():
	is_active = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if is_active and body.has_method("die"):
		body.die()
		timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
