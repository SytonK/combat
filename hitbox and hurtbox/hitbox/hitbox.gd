class_name Hitbox
extends Area2D


signal hit(attack: Attack, defense: Defense)


@export var attack: Attack


func _init() -> void:
	collision_mask = 0
 
func on_hit(defense: Defense) -> void:
	hit.emit(attack, defense)
