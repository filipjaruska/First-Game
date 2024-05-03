extends Node
@onready var camera_player = $"../Player/Camera2D"
@onready var camera_2d = $Path2D/PathFollow2D/Camera2D

# adsfsdf
@onready var label = $"../Lables/Label"
@onready var bad_guy = $BadGuy
@onready var label_3 = $"../Lables/Label3"


var wait = false
# Called when the node enters the scene tree for the first time.
func _ready():
	camera_player.enabled = false
	camera_2d.enabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var path_follow_2d = $Path2D/PathFollow2D
	if path_follow_2d.progress_ratio <= 0.69:
		path_follow_2d.progress_ratio += 0.0008
	if path_follow_2d.progress_ratio >= 0.69:
		await get_tree().create_timer(5).timeout
		path_follow_2d.progress_ratio += 0.0005
	if path_follow_2d.progress_ratio >= 0.7:
		bad_guy.visible = false
		label_3.visible = false
	if path_follow_2d.progress_ratio >= 1:
		camera_player.enabled = true
		camera_2d.enabled = false
		label.visible = true

