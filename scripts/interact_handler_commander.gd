extends Node
@onready var speech_label: Label = $"../../SpeechLabel"

var lines = [
	"Dave, you're late! Again!",
	"We've taken the enemy's armory.",
	"But guess what? Nobody speaks their damn language!",
	"All we know is this place is a missile factory.",
	"That weird rune—ᛟ? Yeah, it means 'missile.' Trust me.",
	"Now, get that damn machine running before I lose my mind!",
	"And don't forget your notebook—press 'C' to open it.",
	"Bring me a missile by sundown, or no dinner for you.",
	"No work, no ration!"
]

var lines_missile = [
	"Dave, you brought the missile.",
	"So you get an extra spoon of… whatever this is."
]

var cur_line_id = lines.size()
var mission_completed = false

func handle_interact() -> void:
	var inventory = InteractManagerSingleton.inventory
	if inventory.get_item_name() == "missile":
		cur_line_id = lines_missile.size()
		mission_completed = true
		inventory.remove_item()
	
	if mission_completed:
		cur_line_id = say_line(lines_missile, cur_line_id)
		if cur_line_id == lines_missile.size() - 1:
			var player = InteractManagerSingleton.player
			player.set_full()
	else:
		cur_line_id = say_line(lines, cur_line_id)


func say_line(line_list, cur_line_id):
	cur_line_id += 1
	if cur_line_id > line_list.size():
		cur_line_id = 0
	if cur_line_id < line_list.size():
		speech_label.text = line_list[cur_line_id]
	else:
		speech_label.text = ""
	
	return cur_line_id
