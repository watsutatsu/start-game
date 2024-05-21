extends Node2D

var started = false;

func _ready():
	$BootScreenAudio.play();
	
func _process(delta):

	if !started:
		if Input.is_action_just_pressed("ui_accept"):
			started = true
			$StartGameAudio.play()
			await $StartGameAudio.finished
			get_tree().change_scene_to_file("res://worlds/1/levels/00/main.tscn")
