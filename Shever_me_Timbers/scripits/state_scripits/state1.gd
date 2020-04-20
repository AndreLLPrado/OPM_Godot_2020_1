extends Node

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		$"pause_menu".visible = true
		get_tree().paused = true
		pass
	pass
