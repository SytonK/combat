class_name Hitbox
extends Area2D


signal hit(attack: Attack)
signal blocked(attack: Attack)


@export var attack: Attack


func _init() -> void:
	collision_layer = Layers.HITBOX_LAYER
	collision_mask = 0
 
func on_hit() -> void:
	hit.emit(attack)

func on_blocked() -> void:
	blocked.emit(attack)
