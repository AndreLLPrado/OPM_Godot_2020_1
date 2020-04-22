extends KinematicBody2D

const cannonBall = preload("res://scenes/CannonBall.tscn")
var movX = 0
var movY = 45

func _physics_process(delta):
	pass
	
	if Input.is_action_just_pressed("ui_action"):
		var projectile = cannonBall.instance()
		get_parent().add_child(projectile)
		projectile.position = $Position2D.global_position
	
	
	if Input.is_action_pressed("ui_left"):
		if(movX > 1):
			move_and_collide(Vector2(-2.5, 0))
			movX = movX - 1
	elif Input.is_action_pressed("ui_right"):
		if(movX < 350):
			move_and_collide(Vector2(2.5, 0))
			movX = movX + 1
	
	if Input.is_action_pressed("ui_up"):
		if(movY > 1):
			move_and_collide(Vector2(0, -1.25))
			movY = movY - 1
	elif Input.is_action_pressed("ui_down"):
		if(movY < 89):
			move_and_collide(Vector2(0, 1.25))
			movY = movY + 1
