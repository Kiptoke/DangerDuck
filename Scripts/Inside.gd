extends Node2D

var Enemy = preload("res://Enemy.tscn")

var snail = preload("res://Graphics/snail.png")
var blobby = preload("res://Graphics/blobby.png")
var emoji = preload("res://Graphics/emoji.png")
var gunCat = preload("res://Graphics/GUNCAT.png")
var boss = preload("res://Graphics/boss.png")

var key = false

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var snail1 = Enemy.instance()
	snail1.spawn(get_node("EnemySpawns/Position2D").global_position,snail)
	call_deferred("add_child",snail1)
	
	var blob1 = Enemy.instance()
	blob1.spawn(get_node("EnemySpawns/Position2D2").global_position,blobby)
	call_deferred("add_child",blob1)
	
	var emoji1 = Enemy.instance()
	emoji1.spawn(get_node("EnemySpawns/Position2D3").global_position,emoji)
	call_deferred("add_child",emoji1)
	
	var snail2 = Enemy.instance()
	snail2.spawn(get_node("EnemySpawns/Position2D4").global_position,snail)
	call_deferred("add_child",snail2)
	
	var gun1 = Enemy.instance()
	gun1.spawn(get_node("EnemySpawns/Position2D5").global_position,gunCat)
	call_deferred("add_child",gun1)
	
	var gun2 = Enemy.instance()
	gun2.spawn(get_node("EnemySpawns/Position2D6").global_position,gunCat)
	call_deferred("add_child",gun2)
	
	var emoji2 = Enemy.instance()
	emoji2.spawn(get_node("EnemySpawns/Position2D7").global_position,emoji)
	call_deferred("add_child",emoji2)
	
	var snail3 = Enemy.instance()
	snail3.spawn(get_node("EnemySpawns/Position2D8").global_position,snail)
	call_deferred("add_child",snail3)
	
	var blob2 = Enemy.instance()
	blob2.spawn(get_node("EnemySpawns/Position2D9").global_position,blobby)
	call_deferred("add_child",blob2)
	
	var gun3 = Enemy.instance()
	gun3.spawn(get_node("EnemySpawns/Position2D10").global_position,gunCat)
	call_deferred("add_child",gun3)
	
	var blob3 = Enemy.instance()
	blob3.spawn(get_node("EnemySpawns/Position2D11").global_position,blobby)
	call_deferred("add_child",blob3)
	
	var boss1 = Enemy.instance()
	boss1.spawn(get_node("EnemySpawns/Position2D12").global_position,boss)
	call_deferred("add_child",boss1)

func _on_Key_body_entered(_body):
	print("key get!")
	var item = get_node("Key")
	key = true
	item.queue_free() #THIS CLEARS PLAYER, NOT KEY
