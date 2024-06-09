class_name Hurtbox
extends Area2D 


signal hurt(attack: Attack)


@export var is_blocking: bool = false


func _init() -> void:
	collision_layer = 0
	collision_mask = Layers.HITBOX_LAYER
	area_entered.connect(_on_area_entered)


func _on_area_entered(hitbox: Hitbox) -> void:
	if hitbox:
		hurt.emit(hitbox.attack)
		if is_blocking:
			hitbox.on_blocked()
		else:
			hitbox.on_hit()
