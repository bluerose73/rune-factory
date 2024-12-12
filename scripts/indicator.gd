extends Node2D

@onready var red_sprite: Sprite2D = $RedSprite

@onready var blue_sprite: Sprite2D = $BlueSprite

func turn_on() -> void:
	red_sprite.visible = true
	blue_sprite.visible = false
	
func turn_off() -> void:
	red_sprite.visible = false
	blue_sprite.visible = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
