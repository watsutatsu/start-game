extends CharacterBody2D

const GRAVITY = 400.0

func _physics_process(delta):

	velocity.y += GRAVITY;
