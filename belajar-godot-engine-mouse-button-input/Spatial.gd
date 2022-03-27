extends Spatial

func _process(delta):
	if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
		print("left mouse button pressed")
	if(Input.is_mouse_button_pressed(BUTTON_RIGHT)):
		print("right mouse button pressed")
	if(Input.is_mouse_button_pressed(BUTTON_MIDDLE)):
		print("middle mouse button pressed")
	if(Input.is_action_pressed("test_mouse_action")):
		print("test_mouse_action pressed")
