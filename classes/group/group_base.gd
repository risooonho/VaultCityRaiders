const FRONT_ROW = 0
const BACK_ROW = 1

var name : String = ""
var formation = null
var lastElement : int = 0

func getRow(row, size) -> Array:
	var result = []
	var st = row * size
	for i in range(st, st + size):
		if formation[i] != null:
			result.push_front(formation[i])
	return result

func swapMembers(slot1, slot2):
	var tmp = formation[slot1]
	formation[slot1] = formation[slot2]
	formation[slot1].slot = slot1
	formation[slot2] = tmp
	formation[slot2].slot = slot2
	formation[slot1].refreshRow()
	formation[slot2].refreshRow()

func activeMembers() -> Array:
	var m = []
	for i in formation:
		if i != null:
			if i.isAble():
				m.push_back(i)
	return m

func activeCount():
	var count = 0
	for i in formation:
		if i != null:
			if i.isAble():
				count += 1
	return count

func countRowTargets(row, size, filter) -> int:
	var rowMembers = getRow(row, size)
	var result : int = 0
	var st = row * size
	for i in rowMembers:
		if i != null and i.filter(filter):
			result += 1
	return result

func getRowTargets2(row, size, filter):
	var rowMembers = getRow(row, size)
	var result = []
	for i in rowMembers:
		if i != null and i.filter(filter):
			result.push_front(i)
	return result

func getSpreadTargets2(row, size, filter, slot):
	var result = []
	var st = row * size
	for i in range(st, st+size):
		if i == slot:
			print("[getSpreadTargets2] found slot %d" % slot)
			for j in range(slot-1, st-1, -1):
				print("[getSpreadTargets2] prev slot %d %s" % [j, formation[j]])
				if formation[j] != null and formation[j].filter(filter):
					print("OK")
					result.push_front(formation[j])
					break
			for j in range(slot+1, st+size):
				print("[getSpreadTargets2] next slot %d %s" % [j, formation[j]])
				if formation[j] != null and formation[j].filter(filter):
					print("OK")
					result.push_front(formation[j])
					break
	return result

func getAllTargets(filter):
	var result = []
	for i in formation:
		if i != null and i.filter(filter):
			result.push_front(i)
	return result

func getRandomTarget(filter):
	var result = getAllTargets(filter)
	return [result[randi() % result.size()]] #RNG

func getRandomRowTarget(row, filter):
	var result = getRowTargets(row, filter)
	return [result[randi() % result.size()]] #RNG

func getRowTargets(a, b):
	pass

func getSpreadTargets(a, b, c):
	pass

func initBattle() -> void:
	for i in formation:
		if i != null:
			i.initBattle()


func initBattleTurn() -> void:
	for i in formation:
		if i != null:
			i.initBattleTurn()

func endBattleTurn() -> void:
	for i in formation:
		if i != null:
			i.endBattleTurn()

func findEffects(S) -> bool:
	for i in formation:
		if i != null:
			if i.findEffects(S):
				return true
	return false

func countEffects(S) -> int:
	var count : int = 0
	for i in formation:
		if i != null:
			if i.findEffects(S):
				count += 1
	return count
