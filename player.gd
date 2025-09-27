extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var h_input: float
	h_input = Input.get_axis("test_left", "test_right")

	if h_input == 1:
		$Sprite2D.flip_h = false
	if h_input == -1:
		$Sprite2D.flip_h = true
	
	velocity.x = h_input * 300
	
	var angular_speed = 2*PI
	if Input.is_action_pressed("test_spin"): 
		$Sprite2D.rotation += angular_speed*delta
	
	move_and_slide()
	
	var a_input: float
	a_input = Input.get_axis("test_up", "test_down")
	
	velocity.y = a_input * 300
	
	move_and_slide()

