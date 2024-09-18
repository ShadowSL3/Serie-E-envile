extends Control
@onready var exit_settings: Control = $Exit_Settings
@onready var return_home: Button = $Exit_Settings/Return_home

func _input(event: InputEvent) -> void:
	if event is InputEvent:
		if event.is_action_pressed("exit"):
			exit_settings.visible = true
			return_home.visible = true


func _on_return_home_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")
