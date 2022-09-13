extends Spatial

func _process(delta):
	if(Input.is_key_pressed(KEY_W)):
		print("w is pressed")
	if(Input.is_key_pressed(KEY_S)):
		print("s is pressed")
	if(Input.is_action_pressed("jump")):
		print("jump is pressed")
	if(Input.is_action_pressed("run")):
		print("run is pressed")
	if(Input.is_action_just_pressed("jump")):
		print("jump just pressed")
	if(Input.is_action_just_released("jump")):
		print("jump just released")
	if(Input.is_action_pressed("jump")):
		if(Input.is_action_pressed("run")):
			print("jump while running")
