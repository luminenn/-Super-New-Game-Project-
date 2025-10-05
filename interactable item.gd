#create Area2D, attach AnimatedSprite2D and CollisionShape2D

extends Area2D 

func _on_body_entered(body):
  print("+1 Coin!") 
  queue_free()

#for score counter with coin
#create GameManager node, attach as a unique name

#change interactable item script (in this example "Coin") to:

extends Area2D

func _on_body_entered(body): 
  game_manager.add_point()
  queue_free() 

#then switch to game_manager script:

extends Node

var score = 0 

func add_point():
  score += 1
  print(score) 

#if the desire is to include an in-world text with "x" amount of collected coins, then:
#include ScoreLabel node and place where ever

extends Node

var score = 0 

@onready var score_label = $ScoreLabel

func add_point():
  score += 1 
  score_label.text = "You collected " + str(score) + " coins!" 
