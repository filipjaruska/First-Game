extends Control

@onready var menu = $"."
var paused = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		
func pauseMenu():
	if paused: 
		menu.hide()
		Engine.time_scale = 1
	else:
		menu.show()
		Engine.time_scale = 0
	paused = !paused


func _on_return_pressed():
	pauseMenu()


func _on_options_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
