extends CharacterBody2D

const SPEED = 400.0

func _physics_process(delta):
	
	velocity.x = 0;
	velocity.y = 0;
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED;
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED;
	if Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED;
	if Input.is_action_pressed("ui_down"):
		velocity.y = SPEED;
		
	move_and_slide()
