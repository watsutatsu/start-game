extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Goal.collected_audio_end.connect(_on_collected_audio_end)

func _on_collected_audio_end():
	get_tree().change_scene_to_file("res://levels/02/main.tscn")
