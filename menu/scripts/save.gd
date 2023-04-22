class_name SaveGame
extends Resource

const SAVE_PATH:= "user://savegame.tres"

var player: Resource = preload("res://characters/player.tscn")

func write_savegame():
	ResourceSaver.save(player, SAVE_PATH)
