#vars
var ide_visible = false

# hide/unhide godot ide on run/close
func _init():
	OS.execute('hideide',[],false)
func _exit_tree():
	OS.execute('showide',[],false)

# ability to toggle godot ide visibility
func _input(event):
	if(Input.is_action_pressed("toggle_ide")):
		if(ide_visible):
			OS.execute('hideide',[],false)
		else:
			OS.execute('showide',[],false)
		ide_visible = !ide_visible
