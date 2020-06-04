extends Node2D

var Enemy = preload("res://Enemy.tscn")

var duckImg = preload("res://Graphics/duck.png")
var frogImg = preload("res://Graphics/frogBoss.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	var frog = Enemy.instance()
	frog.spawn(get_node("EnemySpawns/EnemySpawn1").global_position,frogImg)
	call_deferred("add_child",frog)
	
	var duck = Enemy.instance()
	duck.spawn(get_node("EnemySpawns/EnemySpawn2").global_position,duckImg)
	call_deferred("add_child",duck)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
