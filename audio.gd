#create AudioStreamPlayer2D node
#drag music from files into "Stream" slot, set to autoplay
#to make background music persist despite the scene, save as scene, then go to project settings, autoload, go to music.tscn, then add
#to add sound effect to interactable item, go to that item scene, attach AudioStreamPlayer2D, drag audio from files, toggle Bus: SFX
  #if in the event you are adding a SFX to coin which disappeared upon collection, then:
  #add AnimationPlayer node, create new animation, go back to coin (AnimatedSprite2D) and toggle Visible: on, and press key icon and create RESET. Then toggle Visble: off, key icon. 
  #go to CollisionShape2D, whie Disabled is not toggled On, click key icon. Then set to On, add new key.
  #go to AudioStreamPlayer2d, while Playing is not toggled On, press key icon, create. Then while Playing is toggled On, press key icon (or go to AnimationTrackKeyEdit and toggle Value: On)
  #in Animation window, Add Track, Call Method Track, click Coin, right click on 1 second (move everything prior to about 0 seconds), attach void queue_free() Node.

  #in coin.gd

  extends Area2D

  @onready var game_manager = %GameManager
  @onready var animation_player = $AnimationPlayer

  func _on_body_entered(body):
    game_manager.add_point()
    queue_free()
