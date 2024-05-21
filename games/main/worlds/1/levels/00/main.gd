extends Node2D

func _ready():
	await get_tree().create_timer(3.0).timeout
	get_tree().change_scene_to_file("res://worlds/1/levels/01/main.tscn")
