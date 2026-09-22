extends Label

func _ready() -> void:
	await get_tree().create_timer(2).timeout
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 1.0)
	await tween.finished
	queue_free()
