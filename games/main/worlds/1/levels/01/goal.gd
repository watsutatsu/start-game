extends Area2D

signal collected
signal collected_audio_end

func _ready():
	self.body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	monitoring = false
	visible = false
	collected.emit()
	$CollectedAudio.play()
	await $CollectedAudio.finished
	collected_audio_end.emit()
	queue_free()
