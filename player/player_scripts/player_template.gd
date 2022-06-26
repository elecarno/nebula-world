extends KinematicBody2D

onready var frontarm = get_node("player_body/frontarm")
onready var body = get_node("player_body/body")
onready var head = get_node("player_body/head")

func _player_identity():
	pass

func update_player(new_position, player_state):
	set_position(new_position)
	head.global_rotation = player_state["rot"]
	frontarm.global_rotation = player_state["armrot"]
	if player_state["flip"] == true:
		body.set_flip_h(true)
		frontarm.set_flip_h(true)
		frontarm.offset = Vector2(1, 2)
		frontarm.position = Vector2(2, -4)
		head.set_flip_h(true)
		head.offset = Vector2(-0.5, -1)
		head.position = Vector2(0.5, -5)
	else:
		body.set_flip_h(false)
		frontarm.set_flip_h(false)
		frontarm.offset = Vector2(-1, 2)
		frontarm.position = Vector2(-2, -4)
		head.set_flip_h(false)
		head.offset = Vector2(0.5, -1)
		head.position = Vector2(-0.5, -5)
