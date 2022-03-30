extends Node

func _ready():
	print("Game dimulai...")

func change_scene(name):
	get_tree().change_scene("res://Scenes/" + name + ".tscn")
