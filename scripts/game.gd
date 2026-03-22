extends Node2D

var ball_starting_position
var player_starting_position
var computer_starting_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ball_starting_position = $Ball.global_position
	player_starting_position = $Player.global_position
	computer_starting_position = $Computer.global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_body_exited(body: Node2D) -> void: # Resetting the level.
	if $Ball.position.x <= 0:
		Global.player_score += 1
	else:
		Global.computer_score += 1
	
	$Ball.position = ball_starting_position
	$Player.position = player_starting_position
	$Computer.position = computer_starting_position
