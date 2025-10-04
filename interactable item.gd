#create Area2D, attach AnimatedSprite2D and CollisionShape2D

extends Area2D 

func _on_body_entered(body):
  print("+1 Coin!") 
  queue_free()
