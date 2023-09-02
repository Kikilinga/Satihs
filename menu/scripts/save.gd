class_name SaveGame
extends Resource

const SAVE_PATH:= "user://saves/"
const FILE_NAME = "player.res"

var player: Resource = preload("res://characters/player.tscn")

func write_savegame():
	verify_filepath()
	ResourceSaver.save(player, SAVE_PATH+FILE_NAME)

func verify_filepath():
	DirAccess.make_dir_absolute(SAVE_PATH)
