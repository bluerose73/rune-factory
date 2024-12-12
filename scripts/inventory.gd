extends Control

@onready var texture_rect: TextureRect = $MarginContainer/VBoxContainer/Panel/TextureRect

var item_name = null

func set_item(name, texture) -> void:
	item_name = name
	texture_rect.texture = texture	

func remove_item() -> void:
	item_name = null
	texture_rect.texture = null

func get_item_name():
	return item_name

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	InteractManagerSingleton.set_inventory(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
