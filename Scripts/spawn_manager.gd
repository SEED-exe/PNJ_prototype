extends Node2D


@export var amount_zone_monstre = 2
@export var amount_zone_monstre_elite = 1
@export var player_spawn = 1

var spawn_room_grp
func _ready():
	spawn_verify()
	
	
func spawn_verify():
	spawn_room_grp = get_tree().get_nodes_in_group("empty")
	
	for i in player_spawn:
		var rng_room = spawn_room_grp.pick_random()
		if rng_room.is_in_group("empty"):
			player_spawn -= 1
			rng_room.remove_from_group("empty")
			rng_room.add_to_group("player_spawn")
			print(str(rng_room) + "player_spawn")
	
	for i in amount_zone_monstre:
		var rng_room = spawn_room_grp.pick_random()
		if rng_room.is_in_group("empty"):
			amount_zone_monstre -= 0
			rng_room.remove_from_group("empty")
			rng_room.add_to_group("zone_monstre")
			print(rng_room)
			
			
	for i in amount_zone_monstre_elite:
		var rng_room = spawn_room_grp.pick_random()
		if rng_room.is_in_group("empty"):
			amount_zone_monstre_elite -= 1
			rng_room.remove_from_group("empty")
			rng_room.add_to_group("zone_monstre_elite")
			print(rng_room)
			
	if !get_tree().get_nodes_in_group("empty").size() == 0:
		await get_tree().create_timer(0.2).timeout
		spawn_verify()


#assigner un groupe a chaque salle mais avec le bon index
