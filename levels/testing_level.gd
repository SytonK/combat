extends Node2D

@onready var hitbox: Hitbox = $Hitbox
@onready var blocked_hitbox: Hitbox = $BlockedHitbox

func _process(delta) -> void:
	hitbox.position.x += 100 * delta
	blocked_hitbox.position.x += 100 * delta


func _on_hitbox_hit(attack: Attack) -> void:
	print('hitbox hit ', attack.damage)


func _on_hurtbox_hurt(attack: Attack) -> void:
	print('hurtbox hurt ', attack.damage)


func _on_blocked_hitbox_blocked(_attack: Attack) -> void:
	print('blocked hitbox')

func _on_blocked_hurtbox_hurt(_attack: Attack) -> void:
	print('blocked hurtbox')
