extends KinematicBody2D

var active = false
var Bullet = preload("res://EnemyBullet.tscn")
var Pickup = preload("res://Pickup.tscn")
var target

func spawn(pos, img):
	add_to_group("Enemies")
	position = pos
	$EnemySprite.texture = img

func _on_DetectRadius_body_entered(body):
	if body.name == "Player":
		target = body
		active = true

func _on_Timer_timeout():
	if(active == true):
		Music.get_node("enemyShoot").play()
		$EnemyGun.look_at(target.position)
		var bul = Bullet.instance()
		bul.start(get_node("EnemyGun/EnemyShootFront").global_position,$EnemyGun.rotation)
		get_parent().add_child(bul)

func _on_DetectRadius_body_exited(body):
	if body.name == "Player":
		active = false

func _on_Enemy_tree_exiting():
	Music.get_node("enemyHit").play()
	var pick = Pickup.instance()
	pick.start(global_position)
	get_parent().call_deferred("add_child",pick)
