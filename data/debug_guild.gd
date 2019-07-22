var A = load("res://classes/char/char_player.gd").new()
var data = {
	name = "Balmung",
	funds = 123456,
	stats = {
		wins = 0,
		defeats = 0,
	},
	world = {
		time = 29,
		day = 1,
		IDcounter = 67,
	},
	roster = [
		{ name = "Jay",
			race = "debug/choujin",	aclass = "debug/ofight",
			XP = 500,
			portrait = null,
			energyColor = "#1100FF",
			equip = [
				# Weapons
				{ tid = "story/orbicann", level = 0, uses = 25, extra = null, gem = [ ["core/speed", 1001], ["core/speed", 1001], [["core", "shock"], 1001], [["core", "reson"], 1001], [["core", "shock"], 1001], [["core", "reson"], 1000], [["core", "shock"], 1000], [["core", "power"], 1000] ] },
				{ tid = "story/fomablad", level = 0, uses = 25, extra = null, gem = [ [["core", "shock"], 1001], [["core", "reson"], 1001] ] },
				null,
				null,
				# Armor
				{ tid = "story/orbitfrm", parts = { "ENGINE":["story/plasdr", 5, 5] } },
				# Gear
				{ tid = ["debug", "debug"] },
				null,
				null,
			 ],
			skills = [ [0, 1], [1, 1], [2, 1], [3, 1] ],
			links = [
				[000, A.LINK_NONE, A.LINK_NONE, A.LINK_NONE],
				[100, A.LINK_BESTFRIEND, A.LINK_NONE, A.LINK_NONE],
				[030, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[010, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[080, A.LINK_RIVAL, A.LINK_NONE, A.LINK_NONE],
			],
		},
		{ name = "Magpie",
			race = "debug/choujin",	aclass = "debug/gdriver",
			XP = 500,
			portrait = null,
			energyColor = "#0033AA",
			equip = [
				# Weapons
				{ tid = "debug/soldrifl", level = 0, uses = 25, extra = null, gem = [ ["core/void", 900], [["core", "charge"], 900] ] },
				{ tid = "debug/boostbld", level = 0, uses = 50, extra = null, gem = [ ["core/protect", 900], [["core", "power"], 900], [["core", "protect"], 0], [["core", "rebierth"], 0], [["core", "protect"], 0], [["core", "accel"], 900] ] },
				null,
				null,
				# Armor
				{ tid = "story/KSSGfrm1", parts = null},
				# Gear
				{ tid = ["debug", "debug"] },
				null,
				null,
			 ],
		 	skills = [ [0, 1], [1, 1], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1] ],
			links = [
				[100, A.LINK_BESTFRIEND, A.LINK_NONE, A.LINK_NONE],
				[000, A.LINK_NONE, A.LINK_NONE, A.LINK_NONE],
				[050, A.LINK_NAKAMA, A.LINK_NONE, A.LINK_NONE],
				[080, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[060, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
			],
		},
		{ name = "Anna",
			race = "debug/vampire", aclass = "debug/incinera",
			XP = 500,
			portrait = null,
			energyColor = "#DD0000",
			equip = [
				# Weapons
				{ tid = ["debug", "hellfngr"], level = 0, uses = 1, extra = null, gem = [ [["core", "speed"], 101], [["core", "flame"], 100], [["core", "power"], 1], [["core", "flame"], 100], [["core", "power"], 1], [["core", "flame"], 1], [["core", "decel"], 800],[["core", "cut"], 901] ] },
				null,
				null,
				null,
				# Armor
				{ tid = ["story", "redbrig"], vehicle = {}, frame = {}},
				# Gear
				{ tid = ["debug", "debug"] },
				null,
				null,
			 ],
		 	skills = [ [0, 1], [1, 1], [2, 1], [3, 1] ],
			links = [
				[010, A.LINK_NAKAMA, A.LINK_NONE, A.LINK_NONE],
				[010, A.LINK_NAKAMA, A.LINK_NONE, A.LINK_NONE],
				[000, A.LINK_NONE, A.LINK_NONE, A.LINK_NONE],
				[010, A.LINK_NAKAMA, A.LINK_NONE, A.LINK_NONE],
				[010, A.LINK_NAKAMA, A.LINK_NONE, A.LINK_NONE],
			],
		},
		{ name = "Yukiko",
			race = "debug/choujin", aclass = "debug/akashic",
			XP = 500,
			portrait = null,
			energyColor = "#4477FF",
			equip = [
				# Weapons
				{ tid = ["debug", "debugg"], level = 0, uses = 25, extra = null, gem = [ [["core", "echo"], 200], [["core", "power"], 900], [["core", "life"], 901], [["core", "power"], 901], [["core", "life"], 901], [["core", "rebicold"], 901], [["core", "life"], 901], [["core", "atunm"], 901] ] },
				null,
				null,
				null,
				# Armor
				{ tid = ["story", "soulfrm"], vehicle = {}, frame = {}},
				# Gear
				{ tid = ["debug", "debug"] },
				null,
				null,
			 ],
			personalInventory = [
				[1, ["core", "nostrum"],  { level = 1 }],
				[1, ["core", "fireward"], { level = 1, charge = 100}],
			],
			personalInventorySize = 2,
			inventory = [
				[1, ["core", "fireward"], { level = 1, charge = 100}]
			],
		 	skills = [ [0, 1], [1, 1], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1] ],
			links = [
				[050, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[100, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[030, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[000, A.LINK_NONE, A.LINK_NONE, A.LINK_NONE],
				[020, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
			],
		},
		{ name = "Shiro",
			race = "debug/choujin", aclass = "debug/muramasa",
			XP = 500,
			portrait = null,
			equip = [
				# Weapons
				{ tid = ["story", "ganrei"], level = 0, uses = 25, extra = null, gem = null },
				{ tid = ["story", "kokukou"], level = 0, uses = 25, extra = null, gem = null },
				null,
				null,
				# Armor
				{ tid = ["story", "murafrm"], parts = {}},
				# Gear
				{ tid = ["debug", "debug"] },
				null,
				null,
			 ],
		 	skills = [ [0, 1], [1, 1], [2, 1] ],
			links = [
				[100, A.LINK_RIVAL, A.LINK_NONE, A.LINK_NONE],
				[070, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[025, A.LINK_NAKAMA, A.LINK_NONE, A.LINK_NONE],
				[030, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[000, A.LINK_NONE, A.LINK_NONE, A.LINK_NONE],
			],
		},
		{ name = "Elodie",
			race = "debug/human",	aclass = "debug/rider",
			XP = 500,
			portrait = null,
			equip = [
				# Weapons
				{ tid = "story/plndevie", level = 0, uses = 25, extra = null, gem = null },
				null,
				null,
				null,
				# Armor
				{ tid = "story/soleil", parts = {} },
				# Gear
				null,
				null,
				null,
			 ],
		 	skills = [ [0,1], ],
			links = [
				[100, A.LINK_RIVAL, A.LINK_NONE, A.LINK_NONE],
				[070, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[025, A.LINK_NAKAMA, A.LINK_NONE, A.LINK_NONE],
				[030, A.LINK_FRIEND, A.LINK_NONE, A.LINK_NONE],
				[000, A.LINK_NONE, A.LINK_NONE, A.LINK_NONE],
			],
		},
	],
	formationSlots = [
 		0, 2, 4,
		1, 3, 5,
	],
	inventory = [
		[1, ["core", "nostrum"],  { level = 1 }],
		[1, ["core", "nostrum"],  { level = 1 }],
		[1, ["core", "nostrum"],  { level = 1 }],
		[1, ["core", "repair1"],  { level = 1, charge = 24 }],
		[1, ["core", "repair1"],  { level = 1, charge = 25 }],
		[1, ["core", "repair2"],  { level = 1, charge = 25 }],
		[1, ["core", "lifeshrd"], { level = 1 }],
		[1, ["debug", "grenade"], { level = 1 }],
		[1, ["core", "defshrd"],  { level = 1 }],
		[1, ["core", "blaklotu"],  { level = 1 }],
		[1, ["core", "blaklotu"],  { level = 1 }],
		[1, ["core", "erthward"], { level = 1, charge = 0}],
		[1, ["core", "fortcoin"], { level = 1, charge = 100}],
	],
	dragonGems = [
		[["core", "flame"], 0],
		[["core", "flame"], 100],
		[["core", "flame"], 200],
		[["core", "flame"], 300],
		[["core", "frost"], 0],
		[["core", "frost"], 100],
		[["core", "frost"], 200],
		[["core", "frost"], 300],
		[["core", "shock"], 0],
		[["core", "shock"], 100],
		[["core", "shock"], 200],
		[["core", "shock"], 300],
		[["core", "wind"], 0],
		[["core", "wind"], 100],
		[["core", "wind"], 200],
		[["core", "wind"], 300],
		[["core", "cut"], 0],
		[["core", "cut"], 100],
		[["core", "cut"], 200],
		[["core", "cut"], 300],
		[["core", "water"], 0],
		[["core", "water"], 100],
		[["core", "water"], 200],
		[["core", "water"], 300],
		[["core", "life"], 0],
		[["core", "life"], 100],
		[["core", "life"], 200],
		[["core", "life"], 300],
		[["core", "blunt"], 0],
		[["core", "blunt"], 100],
		[["core", "blunt"], 200],
		[["core", "blunt"], 300],
		[["core", "earth"], 0],
		[["core", "earth"], 100],
		[["core", "earth"], 200],
		[["core", "earth"], 300],
		[["core", "pierce"], 0],
		[["core", "pierce"], 100],
		[["core", "pierce"], 200],
		[["core", "pierce"], 300],
		[["core", "void"], 0],
		[["core", "void"], 100],
		[["core", "void"], 200],
		[["core", "void"], 300],
		[["core", "echo"], 0],
		[["core", "echo"], 100],
		[["core", "echo"], 200],
		[["core", "echo"], 300],



		[["core", "power"], 300],
		[["core", "power"], 600],
		[["core", "power"], 900],
		[["core", "accel"], 300],
		[["core", "accrc"], 0],
		[["core", "accrc"], 100],
		[["core", "accrc"], 200],
		[["core", "atunm"], 0],
		[["core", "atunm"], 100],
		[["core", "atunm"], 200],
		[["core", "reson"], 0],
		[["core", "reson"], 100],
		[["core", "reson"], 200],
		[["core", "expan"], 0],
		[["core", "expan"], 500],
		[["core", "expan"], 999],
		[["core", "drain"], 0],
		[["core", "drain"], 500],
		[["core", "drain"], 999],
		[["core", "insig"], 0],
		[["core", "insig"], 500],
		[["core", "insig"], 999],
		[["core", "merls"], 0],
		[["core", "merls"], 500],
		[["core", "merls"], 999],
		[["core", "charge"], 0],
		[["core", "charge"], 500],
		[["core", "charge"], 999],
		[["core", "scttr"], 0],
		[["core", "scttr"], 500],
		[["core", "scttr"], 999],
		[["core", "phase"], 0],
		[["core", "phase"], 500],
		[["core", "phase"], 999],


		[["core", "speed"], 0],
		[["core", "speed"], 500],
		[["core", "speed"], 999],
		[["core", "endur"], 0],
		[["core", "endur"], 500],
		[["core", "endur"], 999],
		[["core", "stren"], 0],
		[["core", "stren"], 500],
		[["core", "stren"], 999],
		[["core", "wisdo"], 0],
		[["core", "wisdo"], 500],
		[["core", "wisdo"], 999],
		[["core", "intel"], 0],
		[["core", "intel"], 500],
		[["core", "intel"], 999],
	]
}
