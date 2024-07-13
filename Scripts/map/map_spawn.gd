extends TileMap



func _ready():
	var player = get_tree().get_nodes_in_group("player")[0]
	player.global_position = global_position
