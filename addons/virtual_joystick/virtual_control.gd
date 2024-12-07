extends CanvasLayer

var max_size = .15 # The maximum percentage of the screen height a button should cover

# resize buttons when godot first loads the scene
func _ready():
	var size = DisplayServer.window_get_size()
	
	var a = $HBoxContainerButtons/VBoxContainer/HBoxContainer/ControlA/Control/ButtonA
	var b = $HBoxContainerButtons/VBoxContainer/HBoxContainer/Control/ControlB/ButtonB
	var x = $HBoxContainerButtons/VBoxContainer/HBoxContainer/ControlX/Control/ButtonX
	var y = $HBoxContainerButtons/VBoxContainer/MidControl/ControlY
	
	# Calculate scale for buttons
	var buttonHeight = b.get_texture_normal().get_size().y
	var ratio = (size.y / buttonHeight) * max_size
	var scale = Vector2(ratio,ratio)
	
	a.scale = scale
	b.scale = scale
	x.scale = scale
	y.scale = scale
