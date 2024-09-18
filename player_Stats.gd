extends Resource
class_name Player
@export_category("Player Settings")
@export var lsd:int 
@export var powershoot: int
@export var value_player:int 
@export_enum("Epic", "Rare", "Silver", "Morf", "Neon", "Bronze") var Player_Rarity: String
@export_subgroup("Injury")
@export var active_injury: bool
@export var injury:Injury
@export var level_injury:float
enum PlayerStats  { 
	Bronze,
	Silver,
	Oro, 
	Neon,
	Morf,
	Coldera,
}
enum Injury {
	Extra_low,
	Low,
	Medium, 
	High,
	Super_intensive, 
	OutForAlways
}
func _rarity_player():
	var playerStats = PlayerStats

func _level_injury():
	if injury > level_injury:
		pass
		
		
func injury_active(active: bool, target_sprite:Sprite2D, input_sprite:String):
	active = false
	target_sprite = Sprite2D.new()
	target_sprite.texture.set(input_sprite, "")
	if active_injury == true:
		active = true
		print("--- Activate ---")
