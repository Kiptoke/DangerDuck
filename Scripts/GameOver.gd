extends RichTextLabel

func _process(_delta):
	if(Player.health == 0):
		visible = true
	if(Player.won):
		bbcode_text = "[center]You win![/center]"
		visible = true
		get_tree().paused = true
		
