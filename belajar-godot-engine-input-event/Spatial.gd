extends Spatial


func _input(event):
	if event is InputEventMouseMotion:
		print(event.relative)
	if event is InputEventMouseButton:
		if(event.pressed):
			print(event.button_index)
	if event is InputEventKey:
		if(event.pressed):
			if(event.echo == false):
				print(char(event.scancode) + " is just pressed")
			else:
				print(char(event.scancode) + " is pressed")
