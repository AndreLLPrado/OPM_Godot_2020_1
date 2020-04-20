extends Control


#botao para escolher a dificuldade
func _on_play_pressed():
	$"CenterContainer/VBoxContainer/chose_dificulty_popup".visible = true
	$"CenterContainer/VBoxContainer/title".visible = false
	$"CenterContainer/VBoxContainer/title/play".visible = false
	$"options_button".visible = false
	$"credits_button".visible = false
	$"exit_button".visible = false
	pass
	
#botao para o menu de opcoes
func _on_options_pressed():
	get_tree().change_scene("res://scenes/menu_scenes/options_menu.tscn")
	pass

#botao para o menu de creditos
func _on_credits_button_pressed():
	get_tree().change_scene("res://scenes/menu_scenes/credits_menu.tscn")
	pass

func _on_exit_button_pressed():
	get_tree().quit()
	pass

func _on_medium_pressed():
	get_tree().change_scene("res://scenes/state_scenes/state1.tscn")
	pass

func _process(delta):
	if Input.is_action_just_pressed("esq"):
		$"CenterContainer/VBoxContainer/title".visible = true
		$"CenterContainer/VBoxContainer/title/play".visible = true
		$"options_button".visible = true
		$"credits_button".visible = true
		$"exit_button".visible = true
		$"CenterContainer/VBoxContainer/chose_dificulty_popup".visible = false
		pass
	pass
