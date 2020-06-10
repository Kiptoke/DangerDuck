extends Node2D

var Enemy = preload("res://Enemy.tscn")

var frogImg = preload("res://Graphics/frog.png")
var bossImg = preload("res://Graphics/frogBoss.png")
var flamImg = preload("res://Graphics/flamingo.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var frog1 = Enemy.instance()
	frog1.spawn(get_node("EnemySpawns/EnemySpawn1").global_position,frogImg)
	call_deferred("add_child",frog1)
	
	var frog2 = Enemy.instance()
	frog2.spawn(get_node("EnemySpawns/EnemySpawn2").global_position,frogImg)
	call_deferred("add_child",frog2)
	
	var boss1 = Enemy.instance()
	boss1.spawn(get_node("EnemySpawns/EnemySpawn3").global_position,bossImg)
	call_deferred("add_child",boss1)
	
	var frog3 = Enemy.instance()
	frog3.spawn(get_node("EnemySpawns/EnemySpawn4").global_position,frogImg)
	call_deferred("add_child",frog3)
	
	var boss2 = Enemy.instance()
	boss2.spawn(get_node("EnemySpawns/EnemySpawn5").global_position,bossImg)
	call_deferred("add_child",boss2)
	
	var flam1 = Enemy.instance()
	flam1.spawn(get_node("EnemySpawns/EnemySpawn6").global_position,flamImg)
	call_deferred("add_child",flam1)
	
	var flam2 = Enemy.instance()
	flam2.spawn(get_node("EnemySpawns/EnemySpawn7").global_position,flamImg)
	call_deferred("add_child",flam2)
	
	var boss3 = Enemy.instance()
	boss3.spawn(get_node("EnemySpawns/EnemySpawn8").global_position,bossImg)
	call_deferred("add_child",boss3)
	
	var frog4 = Enemy.instance()
	frog4.spawn(get_node("EnemySpawns/EnemySpawn9").global_position,frogImg)
	call_deferred("add_child",frog4)
	
	var flam3 = Enemy.instance()
	flam3.spawn(get_node("EnemySpawns/EnemySpawn10").global_position,flamImg)
	call_deferred("add_child",flam3)
	
	var boss4 = Enemy.instance()
	boss4.spawn(get_node("EnemySpawns/BossSpawn").global_position,bossImg)
	call_deferred("add_child",boss4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
