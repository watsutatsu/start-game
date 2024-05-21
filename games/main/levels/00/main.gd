extends Node2D

func _ready():
	$BootScreenAudio.play();
	
func _process(delta):

	if Input.is_action_just_pressed("ui_accept"):
		$StartGameAudio.play()
		await $StartGameAudio.finished
		get_tree().change_scene_to_file("res://levels/01/main.tscn")
