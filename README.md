# -Super-New-Game-Project-
basic code for basic 2d game functions on GoDot

extends CharacterBody2D

left to right 2d movement with directionality 
additionally, up to down 2d movement 

	func _physics_process(delta: float) -> void:
	var h_input: float
	h_input = Input.get_axis("ui_left", "ui_right")
	
	if h_input == 1:
		$Sprite2D.flip_h = false
	if h_input == -1:
			$Sprite2D.flip_h = true
	
	velocity.x = h_input * 300
	
	move_and_slide()

 	 var a_input: float
	a_input = Input.get_axis("ui_up", "ui_down")
	
	velocity.y = a_input * 300
	
	move_and_slide()
