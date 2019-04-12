var data = {}
var template = initTemplate()

const LIBSTD_BOOL = "loaderBool"
const LIBSTD_INT = "loaderInt"
const LIBSTD_FLOAT = "loaderFloat"
const LIBSTD_STRING = "loaderString"
const LIBSTD_TID = "loaderTID"
const LIBSTD_VARIABLEARRAY = "loaderVariableArray"
const LIBSTD_STATSPREAD = "loaderStatSpread"
const LIBSTD_ELEMENTDATA = "loaderElementData"
const LIBSTD_SKILL_ARRAY = "loaderSkillArray"
const LIBSTD_SKILL_LIST = "loaderSkillList"

func initTemplate():
	return null

func initEntry(entry):
	if template != null:
		return parseTemplate(entry)
	else:
		print("[EE] CRITICAL: No datalib template defined. This is gonna explode.")
		return null

func loadJson(json):
	pass

func loadGD(file):
	var f = load(file).new()
	var dat = f.dat
	if not dat:
		return null
	else:
		print(dat)
		return dat

func loadDict(dict):
	for key in dict:
		data[key] = {}
		for key2 in dict[key]:
			data[key][key2] = initEntry(dict[key][key2])

func copyIntegerArray(a):
	var size = a.size()
	var result = core.newArray(size)
	for i in range(size):
		result[i] = int(a[i])
	return result

func getIndex(id):
	if typeof(id) != TYPE_ARRAY:
		print("[!!] Given library TID is not an array. Attempting to return failsafe.")
		return data["debug"]["debug"]
	if id.size() != 2:
		print("[!!] Given library TID is not an array of two elements. Attempting to return failsafe.")
		return data["debug"]["debug"]
	if id[0] in data:
		if id[1] in data[id[0]]:
			return data[id[0]][id[1]]
	print("[!!] Given library TID [%s/%s] not found. Attempting to return failsafe." % [id[0], id[1]])
	return data["debug"]["debug"]

func printData():
	for key in data:
		for key2 in data[key]:
			print("[%s/%s]: %s" % [key, key2, data[key][key2]])

func loadKey(loader, val):
	var result = call(loader, val)
	return result

func parseTemplate(dict):
	var result = {}
	for key in template:
		if key in dict:
			result[key] = loadKey(template[key].loader, dict[key])
		else:
			if "default" in template[key]:
				result[key] = loadKey(template[key].loader, template[key].default)
			else:
				result[key] = loadKey(template[key].loader, null)
	return result

# Standard loaders #############################################################

func loaderBool(val):
	if val == null:
		return false
	else:
		return bool(val)

func loaderInt(val):
	if val == null:
		return int(0)
	else:
		return int(val)

func loaderFloat(val):
	if val == null:
		return float(0.0)
	else:
		return float(val)

func loaderString(val):
	if val == null:
		return "NULL"
	else:
		return str(val)

func loaderVariableArray(val):
	var result = []
	if val == null:
		return result
	else:
		result.resize(val.size())
		for i in range(val.size()):
			result[i] = int(val[i])
		return result


func loaderStatSpread(val):
	if val == null:
		return [
		#  HP   STR  END  INT  WIS  AGI  LUC
			[000, 000, 000, 000, 000, 000, 000],
			[000, 000, 000, 000, 000, 000, 000]
		]
	else:
		return [ copyIntegerArray(val[0]), copyIntegerArray(val[1]) ]


func loaderElementData(val):
	if val == null:
		return [
		#  CUT  PIE  BLU   FIR  ICE  ELE   ULT  KIN  NRG
			[100, 100, 100,  100, 100, 100,  100, 100, 100]
		]
	else:
		var result = copyIntegerArray(val)
		result.push_front(int(000)) #DMG_UNTYPED entry.
		return result

func loaderTID(val):
	if val == null:
		return core.tid.create("debug", "debug")
	else:
		return core.tid.create(val[0], val[1])

func loaderSkillList(val):
	if val == null:
		return [ loaderTID(null) ]
	else:
		var result = []
		for i in val:
			result.push_back(loaderTID(i))
		return result

func loaderSkillArray(val):
	var result : Array = core.newArray(10)
	match(typeof(val)):
		TYPE_INT:
			for i in range(10):
				result[i] = int(val)
		TYPE_BOOL:
			for i in range(10):
				result[i] = int(1) if val else int(0)
		TYPE_ARRAY:
			var temp : int = val.size()
			for i in range(10):
				if i > temp:
					result[i] = val[temp]
				else:
					result[i] = val[i]
		TYPE_NIL:
			for i in range(10):
				result[i] = int(0)
	return result
