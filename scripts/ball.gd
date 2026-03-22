extends CharacterBody2D

const SPEED = 300.0

func _ready() -> void:
	velocity = Vector2(200, 200).normalized() * SPEED

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
