extends Area2D

@export var scoreLabel: Label

func _on_wall_area_entered(area):
	if area.name == "Ball":
		#oops, ball went out of game place, reset
		area.reset()
		# also um lets do score stuff
		scoreLabel.score(1 if self.name == "LeftWall" else 0)
