extends Control

var bars = core.newArray(10)
var _bar = preload("res://nodes/UI/battle/enemy_display.tscn")
var group = null
onready var width = int(rect_size.x / 5)

func init(_group):
	group = _group
	var node
	group.display = self
	for i in range(10):
		if group.formation[i] != null:
			node = _bar.instance()
			add_child(node)
			node.rect_position = Vector2(i * width, 100) if i < 5 else Vector2((i - 5) * width, 30)
			node.resize(Vector2(width - 2, 8))
			node.get_node("ComplexBar").value = group.formation[i].getHealthN()
			node.init(group.formation[i])
			group.formation[i].display = node
			bars[i] = node
			bars[i].fadeTo(0.1, 5.0)

func update():
	for i in range(10):
		if group.formation[i] == null:
			if bars[i] != null:
				bars[i].stop()
				bars[i] = null

func showBars(time):
	for i in bars:
		if i != null: i.fadeTo(0.9, time)

func fadeBars(time):
	for i in bars:
		if i != null: i.fadeTo(0.1, time)

func battleTurnUpdate():
	pass

func connectUISignals(obj):
	for i in range(10):
		if group.formation[i] != null:
			bars[i].connect("display_info", obj, "showInfo")
			bars[i].connect("hide_info", obj, "hideInfo")

func disconnectUISignals(obj):
	for i in range(10):
		if group.formation[i] != null:
			bars[i].disconnect("display_info", obj, "showInfo")
			bars[i].disconnect("hide_info", obj, "hideInfo")

