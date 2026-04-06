extends Node2D

@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var time1 := 0.547

func _ready():
	audio_stream_player.play()
	play_animation()
	await get_tree().create_timer(time1).timeout
	play_animation()


func play_animation():
	animation_player.play("title drops")
	#await get_tree().create_timer(1).timeout
