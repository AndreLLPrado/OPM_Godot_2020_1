extends Control

var notPaused = true

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		resume()
	pass

func resume():
	if notPaused:
		$".".visible = true
		notPaused = false
		get_tree().paused = true
	else:
		$".".visible = false
		notPaused = true
		get_tree().paused = false
		pass
	pass

func _on_resume_buttom_pressed():
	resume()
	pass


func _on_main_menu_buttom_pressed():
	get_tree().change_scene("res://scenes/menu_scenes/main_menu.tscn")
	get_tree().paused = false
	pass
