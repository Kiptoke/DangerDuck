extends RichTextLabel

func _process(_delta):
	bbcode_text = "[color=red]Health: " + str(Player.health) + "[/color]"
