extends Node2D

func _ready():
	preload("res://levels/00/main.tscn")

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://levels/00/main.tscn")
