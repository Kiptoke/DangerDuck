extends Area2D

# Called when the node enters the scene tree for the first time.
func start(pos):
	position = pos

func _on_Pickup_body_entered(body):
	if(body.name == "Player"):
		Music.get_node("pickupSFX").play()
		if(Player.health < 5):
			Player.health += 1
		print("player health " + str(Player.health))
		queue_free()
