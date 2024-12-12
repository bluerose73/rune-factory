extends Node2D

var filling = null
var has_missile = false

func turn_on():
	$Gear.spin()
	$Gear2.spin()
	$Gear3.spin()
	$Gear4.spin()
	$Gear5.spin()
	$Gear6.spin()
	$Gear7.spin()
	$Gear8.spin()
	$KillZone.turn_on()
	if filling == "blue":
		filling = null
		$FillingSprite.visible = false
		$MissileSprite.visible = true
		has_missile = true

func turn_off():
	$Gear.stop()
	$Gear2.stop()
	$Gear3.stop()
	$Gear4.stop()
	$Gear5.stop()
	$Gear6.stop()
	$Gear7.stop()
	$Gear8.stop()
	$KillZone.turn_off()

func fill(item_name):
	if item_name == "blue":
		filling = "blue"
		$FillingSprite.visible = true

func remove_filling():
	filling = null
	has_missile = false
	$FillingSprite.visible = false
	$MissileSprite.visible = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
