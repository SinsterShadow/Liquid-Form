extends Node2D 
class_name MAIN_GAME

#this is where all the story line should come from, it contains all the preloads/loads and instantiates-
#-this is the code that creates th story using instantiates

#references
@onready var camera: Camera2D = $Camera2D

#preloads and loads:
var HAT = preload("res://SCENES/hat.tscn")
var SILVER = preload("res://SCENES/silver.tscn")
var TITLE = preload("res://SCENES/title.tscn")

#onready/reference vars:


#signals:
signal time
#funcs:
func _ready():
	camera.global_position = Vector2(0 , 0)
	var title = TITLE.instantiate()
	add_child(title)
