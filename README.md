# -Super-New-Game-Project-
basic code for basic 2d game functions

extends CharacterBody2D


func _physics_process(delta: float) -> void:
	var h_input: float
	h_input = Input.get_axis("ui_left", "ui_right")
	
	if h_input == 1:
		$Sprite2D.flip_h = false
	if h_input == -1:
			$Sprite2D.flip_h = true
	
	velocity.x = h_input * 300
	
	move_and_slide()

  
