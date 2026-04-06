extends CharacterBody2D

#consts:
const SPEED = 500.0
const JUMP_VELOCITY = -650.0

#vars:
var health : float = 100
var hunger : float = 100
var time_of_sleep_needed: float = 4

#references:
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var collision_polygon_2d: CollisionPolygon2D = $CollisionPolygon2D



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		#add_child(collision_polygon_2d)
		#remove_child(collision_shape_2d)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animated_sprite_2d.play("idle")
		#add_child(collision_shape_2d)
		#remove_child(collision_polygon_2d)

	move_and_slide()
