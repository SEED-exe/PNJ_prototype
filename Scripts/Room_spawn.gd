extends Node2D


#catégorie -> [zone_monstre] -> [start_enigme] -> [end_enigme ou key_enigme] -> [boss_room]

func _ready():
	await get_tree().create_timer(0.2).timeout
	#randomize()
	#var randi_chossing_room = randi_range(1,2)
	#var path = "res://Scenes/Map/moderne_map/map_0" + str(randi_chossing_room) + ".tscn"
	#var room_1 = load(path)
	#var room_inst = room_1.instantiate()
	#add_child(room_inst)
	if get_groups()[1] == "player_spawn":
		var room_1 = load("res://Scenes/Map/moderne_map/map_02.tscn")
		var room_inst = room_1.instantiate()
		add_child(room_inst)
	else:
		var room_1 = load("res://Scenes/Map/moderne_map/map_01.tscn")
		var room_inst = room_1.instantiate()
		add_child(room_inst)
		
	print(get_groups())
func spawn():
	pass
