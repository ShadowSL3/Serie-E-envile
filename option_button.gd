extends OptionButton
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"../../../AudioStreamPlayer2D"
func _on_selected_item(index: int) -> void:
	#var item_id
	var item_id = get_item_id(index)
	if item_id == 1: 
		add_item("Exit", 4)
	if item_id == 2:
		add_separator("Musics Themes")
		add_item("Serie A Intro", 3)
		add_item("Juventus", 9)
		add_item("Napoli", 7)
		add_item("Inter", 4)
		add_item("Genoa", 5)
		add_item("Lazio", 6)
		add_item("Roma", 8)
		add_item("Milan", 12)
		add_item("Fiorentina", 10)
		add_item("Torino", 11)
		#add_item("", 13)
		
	if item_id == 9:
		add_item("Play", 9_2)
		add_item("Stop", 1_5)
	if item_id == 1_5:
		audio_stream_player_2d.stop()
	if item_id == 9_2:
		audio_stream_player_2d.play(0)
		#add_item("", 14)
		#add_item("", 15)
	if item_id == 4:
		get_tree().quit()
	if item_id == 1:
		pass
