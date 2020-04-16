extends Control


#botao para escolher a dificuldade
func _on_play_pressed():
	$"CenterContainer/VBoxContainer/chose_dificulty_popup".visible = true
	$"CenterContainer/VBoxContainer/title".visible = false
	$"CenterContainer/VBoxContainer/title/play".visible = false
	$"options_button".visible = false
	pass
	
#botao para o menu de opcoes
func _on_options_pressed():
	get_tree().change_scene("res://scenes/menu_scenes/options_menu.tscn")
	pass

	
func _process(delta):
	if Input.is_action_just_pressed("esq"):
		$"CenterContainer/VBoxContainer/title".visible = true
		$"CenterContainer/VBoxContainer/title/play".visible = true
		$"options_button".visible = true
		$"CenterContainer/VBoxContainer/chose_dificulty_popup".visible = false
		pass
	pass
