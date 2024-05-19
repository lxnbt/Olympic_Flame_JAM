extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var sprite_2d = $Sprite2D
var screen_size # Size of the game window.


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	position += Input.get_vector("move_left", "move_right", "move_up", "move_down") * SPEED * delta
	var collision = move_and_collide(velocity * delta)
	if collision:
		print("I collided with ", collision.get_collider().name)
