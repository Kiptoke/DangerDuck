extends KinematicBody2D

var speed = 500

var velocity = Vector2()
var Bullet = preload("res://Bullet.tscn")

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_just_pressed("mouse_click"):
		shoot()
	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)

func _process(_delta):
	look_at(get_global_mouse_position())
	print($gunFront.get_position())

func shoot():
	var bul = Bullet.instance()
	bul.start($gunFront.global_position,rotation)
	get_parent().add_child(bul)