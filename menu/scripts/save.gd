class_name SaveGame
extends Resource

const SAVE_PATH = "user://saves/"
const FILE_NAME = "savegame.res"
var player: Resource = preload("res://characters/player.tscn")

func verify_save_directory():
	DirAccess.make_dir_recursive_absolute(SAVE_PATH)

func write_savegame():
	verify_save_directory()
	ResourceSaver.save(player, SAVE_PATH+FILE_NAME)
