extends Spatial

var timer = 0.0

func _ready():
	print("Scene1 dimulai...")
	
func _process(delta):
	timer += delta
	if (timer > 3.0):
		GameManager.change_scene("Scene2")
		timer = 0.0
