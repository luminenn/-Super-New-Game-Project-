extends CharacterBody2D

const gravity: float = 3000
const jump_speed: float = 600

func _physics_process(delta: float) -> void:
	
	var angular_speed = 4*PI
	if Input.is_action_pressed("test_spin"): 
		$Sprite2D.rotation += angular_speed*delta
	
	var rangular_speed = -4*PI
	if Input.is_action_pressed("test_reverse_spin"): 
		$Sprite2D.rotation += rangular_speed*delta
	
	# Horizontal Movement
	var h_input: float
	h_input = Input.get_axis("test_left", "test_right")
	
	if h_input == 1:
		$Sprite2D.flip_h = false
	if h_input == -1:
		$Sprite2D.flip_h = true
	
	velocity.x = h_input * 150
	
	move_and_slide()
	
	if Input.is_action_pressed("test_jump") and is_on_floor():
		velocity.y = -jump_speed 
	
	velocity.y += gravity * delta
	
