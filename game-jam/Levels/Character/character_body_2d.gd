extends CharacterBody2D

@export var moveSpeed : float = 100

func _physics_process(_delta):
	
	var inputDirection = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	velocity = inputDirection * moveSpeed
	
	move_and_slide()
