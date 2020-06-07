extends KinematicBody2D

var speed = 500

var velocity = Vector2()
var Bullet = preload("res://Bullet.tscn")
var Enemy = preload("res://Enemy.tscn")

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right") :
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_just_pressed("mouse_click"):
		shoot()
	if Input.is_action_pressed("right_click"):
		shoot()
	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)

func shoot():
	var bul = Bullet.instance()
	bul.start(get_node("Gun/gunFront").global_position,$Gun.rotation)
	get_parent().add_child(bul)


func _on_SceneTransition_body_entered(body):
	if(body.name == "Player"):
		print("scene transition") # Transition to inside scene
