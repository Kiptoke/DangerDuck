extends KinematicBody2D

var spawned = false

func spawn(pos, img):
	add_to_group("Enemies")
	print("spawned enemy")
	position = pos
	$EnemySprite.texture = img # "res://Graphics/frogBoss.png"
