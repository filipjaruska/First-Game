extends Node

var score = 0
var coinsOnMap = 28
@onready var scoreL = $"../Player/Score"
@onready var coinsleft = $"../Lables/Coinsleft"

func add_point():
	score += 1
	scoreL.text = str(score) + " Coins"
	coinsleft.text = "Also, you've missed " + str(coinsOnMap - score) + " Coins"
	if score == coinsOnMap:
		coinsleft.text = "You have all coins."
