extends Label

var scoreLeft = 0
var scoreRight = 0

func score(idx):
	if idx == 0:
		scoreLeft = scoreLeft+1
	else:
		scoreRight = scoreRight+1
	self.text = str(scoreLeft) + "      " + str(scoreRight)
