extends KinematicBody2D

var active = false
var Bullet = preload("res://EnemyBullet.tscn")
var target

func spawn(pos, img):
	add_to_group("Enemies")
	position = pos
	$EnemySprite.texture = img # "res://Graphics/frogBoss.png"

func _on_DetectRadius_body_entered(body):
	if body.name == "Player":
		target = body
		active = true

func _on_Timer_timeout():
	if(active == true):
		$EnemyGun.look_at(target.position)
		var bul = Bullet.instance()
		bul.start(get_node("EnemyGun/EnemyShootFront").global_position,$EnemyGun.rotation)
		get_parent().add_child(bul)

func _on_DetectRadius_body_exited(body):
	if body.name == "Player":
		active = false
		
