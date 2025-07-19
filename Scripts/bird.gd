extends CharacterBody2D

const JUMP_VELOCITY = -800.0

func _physics_process(delta: float) -> void:
	# Add the gravity. Gravity strength configured in project settings 
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY

	move_and_slide()
	
	
