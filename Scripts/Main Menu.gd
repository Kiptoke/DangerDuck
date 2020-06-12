extends MarginContainer

func _on_StartButton_button_down():
	get_tree().change_scene("res://Outside.tscn")

func _on_CreditsButton_button_down():
	get_tree().change_scene("res://Credits.tscn")
