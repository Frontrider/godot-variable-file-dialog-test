extends Button

var scene = preload("res://file_dialog.tscn")

@export
var path:String = ""
# Called when the node enters the scene tree for the first time.
func _ready():
	text = path
	connect("pressed",pressed)
	pass 

func pressed():
	print(path+" pressed")
	var parent = get_parent()
	var dialog = scene.instantiate() as FileDialog
	dialog.current_dir = path
	parent.add_child(dialog)
	pass
