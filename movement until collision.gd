extends Node2D

const SPEED = 60

var direction = 1 

#add raycast2D --> have arrow project towards desired direction, protruding out a bit only
#RayCastRight for right facing arrow; RayCastLeft for left facing arrow
#for animatedsprite2d, toggle offset centered on and 
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta): 
  if ray_cast_right.is_colliding():
    direction = -1 
    animated_sprite.flip_h = true
  if ray_cast_left.is_colliding():
    direction = 1 
    animated_sprite.flip_h = false
  position.x += direction * SPEED * delta 
