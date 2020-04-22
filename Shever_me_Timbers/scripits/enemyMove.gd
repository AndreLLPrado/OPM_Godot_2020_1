extends KinematicBody2D

var zigzag = 0
var zigzagBool = true

func _physics_process(delta):

	move_and_collide(Vector2(0, 0.50))
	
	if(zigzag < 25):
		if(zigzagBool == true):
			zigzag = zigzag + 1
			move_and_collide(Vector2(zigzag/8, 0))
	if(zigzag > -25):
		if(zigzagBool == false):
			zigzag = zigzag - 1
			move_and_collide(Vector2(-zigzag/8, 0))
	
	if(zigzag == 25):
		zigzagBool = false
	
	if(zigzag == -25):
		zigzagBool = true



func _on_Area2D_area_entered(area):
	queue_free()
