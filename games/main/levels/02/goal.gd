extends Area2D

func _on_body_entered(body):
	print(body)
	$AudioPlayer.play()
	await $AudioPlayer.finished
	get_tree().change_scene_to_file("res://levels/01/main.tscn")
