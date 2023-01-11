function merge(tbls)
	local res = {}
	for i,v in ipairs(tbls) do
		for i2,v2 in ipairs(v) do
			table.insert(res,v2)
		end
	end
	
	return res
end

function allExcept(tbls, except)
	local tomerge = {}
	for i,v in pairs(tbls) do
		if i~=except then
			table.insert(tomerge, v)
		end
	end
	return merge(tomerge)
end

carrier = {
	blue = { "bShip","bShip"},
	red = {}
}

carrier2 = {
	blue = { "bShip","bShip"},
	red = {}
}

airfield = {
	blue = { "bInfantry", "bArmor", "bSam", "bSam2", "bSam3"},
	red = {"rInfantry", "rArmor", "rSam", "rSam2", "rSam3" }
}

farp = {
	blue = {"bInfantry", "bArmor", "bSam"},
	red = {"rInfantry", "rArmor", "rSam" }
}

regularzone = {
	blue = {"bInfantry", "bArmor", "bSamIR"},
	red = {"rInfantry", "rArmor", "rSamIR" }
}

specialSAM = {
	blue = {"bInfantry", "bSamIR","bInfantry", "bInfantry", "bSamBig" },
	red = {"rInfantry", "rSamIR", "rInfantry", "rInfantry", "rSamBig" }
}

specialSAM2 = {
	blue = {"bInfantry", "bSamIR","bInfantry", "bInfantry", "bSamBig" },
	red = {"rInfantry", "rSamIR", "rInfantry", "rInfantry", "rSamBig" }
}

specialSAM3 = {
	blue = {"bInfantry", "bSamIR","bInfantry", "bInfantry", "bSamBig" },
	red = {"rInfantry", "rSamIR", "rInfantry", "rInfantry", "rSamBig" }
}

specialSAM4 = {
	blue = {"bInfantry", "bSamIR","bInfantry", "bInfantry", "bSamBig" },
	red = {"rInfantry", "rSamIR", "rInfantry", "rInfantry", "rSamBig" }
}

specialSAM5 = {
	blue = {"bInfantry", "bSamIR","bInfantry", "bInfantry", "bSamBig" },
	red = {"rInfantry", "rSamIR", "rInfantry", "rInfantry", "rSamBig" }
}

specialKrasnodar = {
	blue = {"bInfantry", "bSamIR","bSam2", "bSam3", "bSamBig", "bSamFinal" },
	red = {"rInfantry", "rSamIR", "rSam2", "rSam3", "rSamBig", "rSamFinal" }
}

convoy = {
	blue = {"bInfantry"},
	red = {"rInfantry", "rInfantry", "rArmor"}
}

oilrig = {
	blue = {"bboat1", "bboat2"},
	red = {"rboat1", "rboat2"}
}


cargoSpawns = {
	["Anapa"] = {"c1","c2","c3"},
	["Bravo"] = {"c6","c7"},
	["Krymsk"] = {"c8","c9","c10"},
	["Factory"] = {"c4","c5","c11"},
	["Echo"] = {"c12","c13"},
	["BATUMI"] = {"c14","c15","c16"},
	["INDIGO"] = {"c17", "c18"},
	["KOBULETI"] = {"c19","c20","c21"},
	["SENAKI"] = {"c22","c23","c24"},
	["KUTASI"] = {"c25","c26","c27"},
	["Factory 2"] = {"c28","c29","c30"},
	["Khashuri"] = {"c31", "c32", "c33"}
}

farpSupply = {
	["Bravo"] = {"bravoFuelAndAmmo"},
	["Echo"] = {"echoFuelAndAmmo"},
	["INDIGO"] = {"indigoFuelAndAmmo", "indigoFuelAndAmmo2"},
	["Khashuri"] = {"khashuriFuelAndAmmo"}
}

cargoAccepts = {
	anapa = allExcept(cargoSpawns, 'Anapa'),
	bravo =  allExcept(cargoSpawns, 'Bravo'),
	krymsk =  allExcept(cargoSpawns, 'Krymsk'),
	factory =  allExcept(cargoSpawns, 'Factory'),
	echo =  allExcept(cargoSpawns, 'Echo'),
	batumi = allExcept(cargoSpawns, 'BATUMI'),
	indigo = allExcept(cargoSpawns, 'INDIGO'),
	kobuleti = allExcept(cargoSpawns, 'KOBULETI'),
	senaki = allExcept(cargoSpawns, 'SENAKI'),
	kutasi = allExcept(cargoSpawns, 'KUTASI'),
	factory2 =  allExcept(cargoSpawns, 'Factory 2'),
	oilrig = allExcept(cargoSpawns, 'Oil Rig'),
	khashuri = allExcept(cargoSpawns, 'Khashuri'),
	tiblisi = allExcept(cargoSpawns, 'Tiblisi'),
	soganlug = allExcept(cargoSpawns, 'Soganlug'),
	vaziani = allExcept(cargoSpawns, 'Vaziani'),
	general = allExcept(cargoSpawns)
}

flavor = {
	anapa = 'WPT 1\nHome base',
	carrier = 'Carrier group',
	alpha='WPT 2\nDefensive position next to the town of Natuhaevskaya',
	bravo='WPT 3\nFARP next to the town of Damanka.\nWill let us launch helicopter attacks from a bit closer to the action.',
	charlie='WPT 4\nDefensive position next to an old TV tower.\nWill provide allied air patrol to help capture Bravo',
	convoy='WPT 5\nSupply convoy detained north of Bravo.\nKeep damage to the trucks to a minimum while liberating this area.\nWe could really use the supplies.',
	krymsk='WPT 7\nAirbase next to the city of Krymsk.\nCapturing it will provide us with valuable aircraft to use for our cause.',
	radio='WPT 8\nRadio atenna on the outskirts of Krymsk.\nIf we capture it, we can launch AWACS from the nearby airport\nto get some much needed intel on the enemy.',
	oilfields='WPT 6\nOil extraction and Refinery north of Krymsk.\nCapture it to get a steady stream of income, or just destroy it to put a hole in the enemy wallet.',
	delta='WPT 10\nDefensive position out in the middle of nowhere',
	factory='WPT 9\nWeapon factory next to the town of Homskiy.\nWe can use it to resupply nearby bases.\nIt will also provide a steady stream of income.',
	samsite='WPT 11\nHome to an old SA-2 site.\nIf we capture it, we might be able to get some use out of it.',
	foxtrot='WPT 13\nDefensive position with a nice view of a lake',
	echo='WPT 12\nFARP next to the city of Krasnodar.\nCapturing it will let us operate our helicopters in the area.',
	krasnodar='WPT 14\nAirbase next to the city of Krasnodar.\nThe home base of our enemy. Capture it to deprive them of their most valuable asset.',
	batumi = 'WPT 1\nHome base',
	golf = 'WPT 2\nDefensive position next to the town of Chakva',
	hotel = 'WPT 3\nDefensive position in the hills west of Zeda-Sameba', 
	indigo = 'WPT 4\nFARP next to the town of Ochkhamuri.\nWill let us launch helicopter attacks from a bit closer to the action.',
	kobuleti = 'WPT 5\nAirbase nest to the toen of Laituri.',
	factory2 = 'WPT 6\nWeapon Factory north of Kobuleti.\nWe can use it to resupply nearby bases.\nIt will also provide a steady stream of income.',
	juliet = 'WPT 7\nDefensive position next to Hamiskuri.',
	refinery = 'WPT 8\nOil extraction and Refinery East of Senaki.\nCapture it to get a steady stream of income, or just destroy it to put a hole in the enemy wallet.',
	oilrig = 'WPT 9\nOil extraction East off the shore.\nCapture it to get a steady stream of income, or just destroy it to put a hole in the enemy wallet.',
	samsite3 = 'WPT 10\nHome to an old SA-2 site.\nIf we capture it, we might be able to get some use out of it.',
	senaki = 'WPT 11\nAirbase nest to the city of Senaki.',
	radio2 = 'WPT 12\nRadio antenna on the outskirts of Samtredia.\nIf we capture it, we can launch AWACS from the nearby airport\nto get some much needed intel on the enemy.',
	samsite4 = 'WPT 13\nHome to an old SA-2 site.\nIf we capture it, we might be able to get some use out of it.',
	kutasi = 'WPT 14\nAirbase next to the city of Samtredia.',
	samsite2 = 'WPT 15\nHome to an old SA-2 site.\nIf we capture it, we might be able to get some use out of it.',
	khashuri = 'WPT 16\nFARP next to the town of Khashuri.\nWill let us launch helicopter attacks from a bit closer to the action.',
	samsite5 = 'WPT 17\nHome to an old SA-2 site.\nIf we capture it, we might be able to get some use out of it.',
	tiblisi = 'WPT 18\nMain logistics hub of the enemy forces.',
	vaziani =  'WPT 19\nMain airbase of the enemy forces.',
}

local filepath = 'foothold_1.5.lua'
if lfs then 
	local dir = lfs.writedir()..'Missions/Saves/'
	lfs.mkdir(dir)
	filepath = dir..filepath
	env.info('Foothold - Save file path: '..filepath)
end
bc = BattleCommander:new(filepath, 10, 60)
anapa = ZoneCommander:new({zone='Anapa', side=2, level=5, upgrades=airfield, crates=cargoAccepts.anapa, flavorText=flavor.anapa})
carrier = ZoneCommander:new({zone='Carrier Group', side=2, level=2, upgrades=carrier, crates={}, flavorText=flavor.carrier})
alpha = ZoneCommander:new({zone='Alpha', side=1, level=1, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.alpha})
bravo = ZoneCommander:new({zone='Bravo', side=1, level=3, upgrades=farp, crates=cargoAccepts.bravo, flavorText=flavor.bravo})
charlie = ZoneCommander:new({zone='Charlie', side=1, level=1, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.charlie})
convoy = ZoneCommander:new({zone='Convoy', side=1, level=3, upgrades=convoy, crates=cargoAccepts.general, flavorText=flavor.convoy})
krymsk = ZoneCommander:new({zone='Krymsk', side=1, level=5, upgrades=airfield, crates=cargoAccepts.krymsk, flavorText=flavor.krymsk})
oilfields = ZoneCommander:new({zone='Oil Fields', side=1, level=3, upgrades=farp, crates=cargoAccepts.general, flavorText=flavor.oilfields, income=2})
radio = ZoneCommander:new({zone='Radio Tower', side=1, level=1, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.radio})
delta = ZoneCommander:new({zone='Delta', side=1, level=1, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.delta})
factory = ZoneCommander:new({zone='Factory', side=1, level=1, upgrades=regularzone, crates=cargoAccepts.factory, flavorText=flavor.factory, income=2})
samsite = ZoneCommander:new({zone='SAM Site', side=1, level=3, upgrades=specialSAM, crates=cargoAccepts.general, flavorText=flavor.samsite})
foxtrot = ZoneCommander:new({zone='Foxtrot', side=1, level=3, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.foxtrot})
echo = ZoneCommander:new({zone='Echo', side=1, level=3, upgrades=farp, crates=cargoAccepts.echo, flavorText=flavor.echo})
krasnodar = ZoneCommander:new({zone='Krasnodar', side=1, level=6, upgrades=specialKrasnodar, crates=cargoAccepts.general, flavorText=flavor.krasnodar, income=2})
batumi = ZoneCommander:new({zone='BATUMI', side=2, level=5, upgrades=airfield, crates=cargoAccepts.batumi, flavorText=flavor.batumi})
golf = ZoneCommander:new({zone='GOLF', side=1, level=1, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.golf})
hotel = ZoneCommander:new({zone='HOTEL', side=1, level=1, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.hotel})
indigo = ZoneCommander:new({zone='INDIGO', side=1, level=3, upgrades=farp, crates=cargoAccepts.indigo, flavorText=flavor.indigo})
kobuleti = ZoneCommander:new({zone='KOBULETI', side=1, level=5, upgrades=airfield, crates=cargoAccepts.kobuleti, flavorText=flavor.kobuleti})
senaki = ZoneCommander:new({zone='SENAKI', side=1, level=5, upgrades=airfield, crates=cargoAccepts.senaki, flavorText=flavor.senaki})
kutasi = ZoneCommander:new({zone='KUTASI', side=1, level=5, upgrades=airfield, crates=cargoAccepts.kutasi, flavorText=flavor.kutasi})
samsite3 = ZoneCommander:new({zone='SAM Site 3', side=1, level=5, upgrades=specialSAM3, crates=cargoAccepts.general, flavorText=flavor.samsite3})
samsite4 = ZoneCommander:new({zone='SAM Site 4', side=1, level=5, upgrades=specialSAM4, crates=cargoAccepts.general, flavorText=flavor.samsite4})
refinery = ZoneCommander:new({zone='Refinery', side=1, level=5, upgrades=farp, crates=cargoAccepts.general, flavorText=flavor.refinery, income=4})
radio2 =  ZoneCommander:new({zone='Radio Tower2', side=1, level=2, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.radio2})
factory2 = ZoneCommander:new({zone='Factory 2', side=1, level=3, upgrades=regularzone, crates=cargoAccepts.factory, flavorText=flavor.factory, income=2})
juliet = ZoneCommander:new({zone='JULIET', side=1, level=5, upgrades=regularzone, crates=cargoAccepts.general, flavorText=flavor.juliet})
carrier2 = ZoneCommander:new({zone='Carrier Group 2', side=2, level=2, upgrades=carrier2, crates={}, flavorText=flavor.carrier2})
oilrig = ZoneCommander:new({zone="Oil Rig", side=1, level=1, upgrades=oilrig, crates=cargoAccepts.oilrig, flavorText=flavor.oilrig, income=5})
samsite2 = ZoneCommander:new({zone='SAM Site 2', side=1, level=5, upgrades=specialSAM2, crates=cargoAccepts.general, flavorText=flavor.samsite2})
samsite5 = ZoneCommander:new({zone='SAM Site 5', side=1, level=5, upgrades=specialSAM5, crates=cargoAccepts.general, flavorText=flavor.samsite5})
khashuri = ZoneCommander:new({zone='Khashuri', side=1, level=3, upgrades=farp, crates=cargoAccepts.khashuri, flavorText=flavor.khashuri})
tiblisi = ZoneCommander:new({zone='Tiblisi', side=1, level=6, upgrades=specialKrasnodar, crates=cargoAccepts.tiblisi, flavorText=flavor.tiblisi})
--soganlug = ZoneCommander:new({zone='Soganlug', side=1, level=6, upgrades=specialKrasnodar, crates=cargoAccepts.soganlug, flavorText=flavor.soganlug})
vaziani = ZoneCommander:new({zone='Vaziani', side=1, level=6, upgrades=specialKrasnodar, crates=cargoAccepts.vaziani, flavorText=flavor.vaziani})

radio:addCriticalObject('RadioTower')
radio2:addCriticalObject('RadioTower2')
samsite:addCriticalObject('CommandCenter')
samsite2:addCriticalObject('CommandCenter2')
samsite3:addCriticalObject('CommandCenter3')
samsite4:addCriticalObject('CommandCenter4')
samsite5:addCriticalObject('CommandCenter5')
factory:addCriticalObject('FactoryBuilding1')
factory:addCriticalObject('FactoryBuilding2')
factory2:addCriticalObject('FactoryBuilding3')
factory2:addCriticalObject('FactoryBuilding4')
convoy:addCriticalObject('convoy1')
convoy:addCriticalObject('convoy2')
convoy:addCriticalObject('convoy3')
convoy:addCriticalObject('convoy4')

local oilbuildings = {'oilref1','oilref2'}
for i,v in ipairs(oilbuildings) do
	oilfields:addCriticalObject(v)
end

local oilbuildings2 = {'oilref3','oilref4','oilref5','oilref6', 'oilref7'}
for i,v in ipairs(oilbuildings2) do
	refinery:addCriticalObject(v)
end

local oilbuildings3 = {'oilrig1','oilrig2','oilrig3','oilrig4'}
for i,v in ipairs(oilbuildings3) do
	oilrig:addCriticalObject(v)
end

dispatch = {
	krymsk = {
		GroupCommander:new({name='krym1', mission='supply', targetzone='Bravo'}),
		GroupCommander:new({name='krym2', mission='attack', targetzone='Bravo'}),
		GroupCommander:new({name='krym3', mission='patrol', targetzone='Bravo'}),
		GroupCommander:new({name='krym4', mission='patrol', targetzone='Krymsk'}),
		GroupCommander:new({name='krym5', mission='supply', targetzone='Radio Tower'}),
		GroupCommander:new({name='krym6', mission='attack', targetzone='Radio Tower'}),
		GroupCommander:new({name='krym7', mission='patrol', targetzone='Radio Tower'}),
		GroupCommander:new({name='krym8', mission='patrol', targetzone='Bravo'}),
		GroupCommander:new({name='krym9', mission='patrol', targetzone='Krymsk'}),
		GroupCommander:new({name='krym10', mission='supply', targetzone='Bravo'}),
		GroupCommander:new({name='krym11', mission='supply', targetzone='Radio Tower'}),
		GroupCommander:new({name='krym12', mission='supply', targetzone='Delta'}),
		GroupCommander:new({name='krym13', mission='attack', targetzone='Delta'}),
		GroupCommander:new({name='krym14', mission='supply', targetzone='Factory'}),
		GroupCommander:new({name='krym15', mission='attack', targetzone='Factory'}),
		GroupCommander:new({name='krym16', mission='supply', targetzone='Delta'}),
		GroupCommander:new({name='krym17', mission='supply', targetzone='Factory'}),
		GroupCommander:new({name='krym18', mission='supply', targetzone='SAM Site'}),
		GroupCommander:new({name='krym19', mission='supply', targetzone='SAM Site'}),
		GroupCommander:new({name='krym20', mission='attack', targetzone='SAM Site'}),
		GroupCommander:new({name='krym21', mission='patrol', targetzone='Delta'}),
		GroupCommander:new({name='krym22', mission='supply', targetzone='Oil Fields'}),
		GroupCommander:new({name='krym23', mission='supply', targetzone='Oil Fields'}),
		GroupCommander:new({name='krym24', mission='attack', targetzone='Oil Fields'}),
		GroupCommander:new({name='krym25', mission='attack', targetzone='Bravo', type='surface'})
	},
	bravo = {
		GroupCommander:new({name='bravo1', mission='supply', targetzone='Alpha'}),
		GroupCommander:new({name='bravo2', mission='attack', targetzone='Alpha'}),
		GroupCommander:new({name='bravo6', mission='supply', targetzone='Charlie'}),
		GroupCommander:new({name='bravo7', mission='attack', targetzone='Charlie'}),
		GroupCommander:new({name='bravo4', mission='supply', targetzone='Krymsk'}),
		GroupCommander:new({name='bravo5', mission='attack', targetzone='Krymsk'}),
		GroupCommander:new({name='bravo8', mission='supply', targetzone='Krymsk'}),
		GroupCommander:new({name='bravo10', mission='supply', targetzone='Charlie'}),
		GroupCommander:new({name='bravo9', mission='supply', targetzone='Alpha'}),
		GroupCommander:new({name='bravo11', mission='supply', targetzone='Oil Fields'}),
		GroupCommander:new({name='bravo12', mission='supply', targetzone='Oil Fields'}),
		GroupCommander:new({name='bravo13', mission='attack', targetzone='Oil Fields'}),
		GroupCommander:new({name='bravo14', mission='supply', targetzone='Convoy', type='surface'})
	},
	anapa = {
		GroupCommander:new({name='anapa1', mission='supply', targetzone='Alpha'}),
		GroupCommander:new({name='anapa3', mission='supply', targetzone='Bravo'}),
		GroupCommander:new({name='anapa2', mission='supply', targetzone='Charlie'}),
		GroupCommander:new({name='anapa5', mission='patrol', targetzone='Bravo'})
	},
	charlie={
		GroupCommander:new({name='anapa6', mission='attack', targetzone='Bravo'})
	},
	factory={
		GroupCommander:new({name='factory1', mission='supply', targetzone='Krymsk'}),
		GroupCommander:new({name='factory2', mission='supply', targetzone='Krymsk'}),
		GroupCommander:new({name='factory3', mission='supply', targetzone='Delta'}),
		GroupCommander:new({name='factory4', mission='supply', targetzone='Delta'}),
		GroupCommander:new({name='factory5', mission='supply', targetzone='Foxtrot'}),
		GroupCommander:new({name='factory6', mission='supply', targetzone='Foxtrot'}),
		GroupCommander:new({name='factory7', mission='supply', targetzone='Echo'}),
		GroupCommander:new({name='factory8', mission='supply', targetzone='Echo'}),
		GroupCommander:new({name='factory-krymsk-supply', mission='supply', targetzone='Krymsk', type='surface'}),
		GroupCommander:new({name='factory-delta-supply', mission='supply', targetzone='Delta', type='surface'}),
		GroupCommander:new({name='factory-echo-supply', mission='supply', targetzone='Echo', type='surface'}),
		GroupCommander:new({name='factory-foxtrot-supply', mission='supply', targetzone='Foxtrot', type='surface'})
	},
	echo={
		GroupCommander:new({name='echo1', mission='supply', targetzone='SAM Site'}),
		GroupCommander:new({name='echo2', mission='supply', targetzone='SAM Site'}),
		GroupCommander:new({name='echo3', mission='attack', targetzone='Delta'}),
		GroupCommander:new({name='echo4', mission='supply', targetzone='Delta'}),
		GroupCommander:new({name='echo5', mission='supply', targetzone='Delta'}),
		GroupCommander:new({name='echo6', mission='supply', targetzone='Factory'}),
		GroupCommander:new({name='echo7', mission='supply', targetzone='Factory'}),
		GroupCommander:new({name='echo8', mission='attack', targetzone='Factory'}),
		GroupCommander:new({name='echo9', mission='supply', targetzone='Foxtrot'}),
		GroupCommander:new({name='echo10', mission='supply', targetzone='Foxtrot'}),
		GroupCommander:new({name='echo11', mission='attack', targetzone='Foxtrot'}),
		GroupCommander:new({name='echo12', mission='supply', targetzone='Krasnodar'}),
		GroupCommander:new({name='echo13', mission='supply', targetzone='Krasnodar'}),
		GroupCommander:new({name='echo14', mission='supply', targetzone='Krasnodar'})
	},
	krasnodar={
		GroupCommander:new({name='kras1', mission='supply', targetzone='Echo'}),
		GroupCommander:new({name='kras2', mission='supply', targetzone='Echo'}),
		GroupCommander:new({name='kras3', mission='supply', targetzone='Foxtrot'}),
		GroupCommander:new({name='kras4', mission='supply', targetzone='Foxtrot'}),
		GroupCommander:new({name='kras5', mission='attack', targetzone='SAM Site'}),
		GroupCommander:new({name='kras6', mission='attack', targetzone='Krymsk'}),
		GroupCommander:new({name='kras7', mission='attack', targetzone='Radio Tower'}),
		GroupCommander:new({name='kras8', mission='attack', targetzone='Factory'}),
		GroupCommander:new({name='kras9', mission='attack', targetzone='Echo'}),
		GroupCommander:new({name='kras10', mission='attack', targetzone='Foxtrot'}),
		GroupCommander:new({name='kras11', mission='patrol', targetzone='Echo'}),
		GroupCommander:new({name='kras12', mission='patrol', targetzone='Delta'}),
		GroupCommander:new({name='kras13', mission='patrol', targetzone='Factory'})
	},
	foxtrot={
		GroupCommander:new({name='foxtrot-krymsk-attack', mission='attack', targetzone='Krymsk', type='surface'}),
		GroupCommander:new({name='foxtrot-echo-attack', mission='attack', targetzone='Echo', type='surface'})
	},
	oilfields={
		GroupCommander:new({name='oil-krymsk-supply', mission='supply', targetzone='Krymsk', type='surface'})
	},
	batumi={
		GroupCommander:new({name='batumi1', mission='supply', targetzone='GOLF'}),
		GroupCommander:new({name='batumi2', mission='supply', targetzone='HOTEL'}),
		GroupCommander:new({name='batumi3', mission='supply', targetzone='INDIGO'})
	},
	indigo={ 
		GroupCommander:new({name='indigo1', mission='supply', targetzone='GOLF'}),
		GroupCommander:new({name='indigo2', mission='supply', targetzone='HOTEL'}),
		GroupCommander:new({name='indigo3', mission='supply', targetzone='KOBULETI'}),
		GroupCommander:new({name='indigo4', mission='attack', targetzone='GOLF'}),
		GroupCommander:new({name='indigo5', mission='attack', targetzone='HOTEL'}),
		GroupCommander:new({name='indigo20', mission='supply', targetzone='GOLF'}),
		GroupCommander:new({name='indigo21', mission='supply', targetzone='HOTEL'}),
		GroupCommander:new({name='indigo22', mission='supply', targetzone='KOBULETI'})
	},
	kobuleti={
		GroupCommander:new({name='kobuleti1', mission='supply', targetzone='INDIGO'}),
		GroupCommander:new({name='kobuleti2', mission='supply', targetzone='SENAKI'}),
		GroupCommander:new({name='kobuleti3', mission='supply', targetzone='KUTASI'}),
		GroupCommander:new({name='kobuleti4', mission='attack', targetzone='INDIGO'}),
		GroupCommander:new({name='kobuleti5', mission='attack', targetzone='GOLF'}),
		GroupCommander:new({name='kobuleti6', mission='attack', targetzone='HOTEL'}),
		GroupCommander:new({name='kobuleti7', mission='patrol', targetzone='KOBULETI'}),
		GroupCommander:new({name='kobuleti8', mission='patrol', targetzone='KOBULETI'}),
		GroupCommander:new({name='kobuleti9', mission='attack', targetzone='INDIGO'}),
		GroupCommander:new({name='kobuleti20', mission='supply', targetzone='INDIGO'}),
		GroupCommander:new({name='kobuleti21', mission='supply', targetzone='SENAKI'}),
		GroupCommander:new({name='kobuleti22', mission='supply', targetzone='KUTASI'}),
		GroupCommander:new({name='kobuleti23', mission='patrol', targetzone='KOBULETI'})
	},	
	senaki={
		GroupCommander:new({name='senaki1', mission='supply', targetzone='KOBULETI'}),
		GroupCommander:new({name='senaki2', mission='supply', targetzone='KUTASI'}),
		GroupCommander:new({name='senaki3', mission='supply', targetzone='Refinery'}),
		GroupCommander:new({name='senaki4', mission='supply', targetzone='JULIET'}),
		GroupCommander:new({name='senaki5', mission='supply', targetzone='Factory 2'}),
		GroupCommander:new({name='senaki6', mission='supply', targetzone='SAM Site 3'}),
		GroupCommander:new({name='senaki7', mission='patrol', targetzone='SENAKI'}),
		GroupCommander:new({name='senaki8', mission='patrol', targetzone='SENAKI'}),
		GroupCommander:new({name='senaki9', mission='attack', targetzone='KOBULETI'}),
		GroupCommander:new({name='senaki10', mission='attack', targetzone='Factory 2'}),
		GroupCommander:new({name='senaki11', mission='attack', targetzone='JULIET'}),
		GroupCommander:new({name='senaki12', mission='attack', targetzone='Refinery'}),
		GroupCommander:new({name='senaki13', mission='attack', targetzone='SAM Site 3'}),
		GroupCommander:new({name='senaki14', mission='attack', targetzone='KOBULETI'}),
		GroupCommander:new({name='senaki20', mission='supply', targetzone='KOBULETI'}),
		GroupCommander:new({name='senaki21', mission='supply', targetzone='KUTASI'}),
		GroupCommander:new({name='senaki22', mission='supply', targetzone='Refinery'}),
		GroupCommander:new({name='senaki23', mission='supply', targetzone='JULIET'}),
		GroupCommander:new({name='senaki24', mission='supply', targetzone='Factory 2'}),
		GroupCommander:new({name='senaki25', mission='supply', targetzone='SAM Site 3'}),
		GroupCommander:new({name='senaki26', mission='supply', targetzone='Radio Tower2'}),
		GroupCommander:new({name='senaki27', mission='supply', targetzone='SAM Site 4'}),
		GroupCommander:new({name='senaki28', mission='patrol', targetzone='SENAKI'})
	},
		kutasi={
		GroupCommander:new({name='kutasi1', mission='supply', targetzone='KOBULETI'}),
		GroupCommander:new({name='kutasi2', mission='supply', targetzone='SENAKI'}),
		GroupCommander:new({name='kutasi3', mission='supply', targetzone='SAM Site 4'}),
		GroupCommander:new({name='kutasi4', mission='supply', targetzone='Radio Tower2'}),
		GroupCommander:new({name='kutasi5', mission='supply', targetzone='Factory 2'}),
		GroupCommander:new({name='kutasi6', mission='patrol', targetzone='KUTASI'}),
		GroupCommander:new({name='kutasi7', mission='patrol', targetzone='KUTASI'}),
		GroupCommander:new({name='kutasi8', mission='patrol', targetzone='KUTASI'}),
		GroupCommander:new({name='kutasi9', mission='supply', targetzone='SAM Site 2'})
		
	},
		oilrig={
		GroupCommander:new({name='roilrig1', mission='supply', targetzone='SENAKI'}),
		GroupCommander:new({name='boilrig1', mission='supply', targetzone='BATUMI'}),
		GroupCommander:new({name='boilrig2', mission='supply', targetzone='SENAKI'})
	},
		khashuri={
		GroupCommander:new({name='khashuri1', mission='supply', targetzone='SAM Site 2'}),
		GroupCommander:new({name='khashuri2', mission='supply', targetzone='KUTASI'}),
		GroupCommander:new({name='khashuri3', mission='supply', targetzone='SAM Site 5'}),
		GroupCommander:new({name='khashuri4', mission='attack', targetzone='KUTASI'}),
		GroupCommander:new({name='khashuri5', mission='attack', targetzone='KUTASI'})
	},
		tiblisi={
		GroupCommander:new({name='tiblisi1', mission='supply', targetzone='Krymsk'}),
		GroupCommander:new({name='tiblisi2', mission='supply', targetzone='Krasnodar'}),
		GroupCommander:new({name='tiblisi3', mission='supply', targetzone='KOBULETI'}),
		GroupCommander:new({name='tiblisi4', mission='supply', targetzone='SENAKI'}),
		GroupCommander:new({name='tiblisi4', mission='supply', targetzone='KUTASI'})
	},
		vaziani={
		GroupCommander:new({name='vaziani1', mission='patrol', targetzone='Vaziani'}),
		GroupCommander:new({name='vaziani2', mission='attack', targetzone='Anapa'}),
		GroupCommander:new({name='vaziani3', mission='attack', targetzone='Krymsk'}),
		GroupCommander:new({name='vaziani4', mission='attack', targetzone='Krasnodar'}),
		GroupCommander:new({name='vaziani5', mission='attack', targetzone='BATUMI'}),
		GroupCommander:new({name='vaziani6', mission='attack', targetzone='KOBULETI'}),
		GroupCommander:new({name='vaziani7', mission='attack', targetzone='SENAKI'}),
		GroupCommander:new({name='vaziani8', mission='attack', targetzone='KUTASI'})
	},
	refinery={
		GroupCommander:new({name='refinerysupply', mission='supply', targetzone='SENAKI', type='surface'})
	},
	juliet={
		GroupCommander:new({name='julietattack', mission='attack', targetzone='KOBULETI', type='surface'})
	}
}	
	
anapa:addGroups(dispatch.anapa)
bravo:addGroups(dispatch.bravo)
krymsk:addGroups(dispatch.krymsk)
charlie:addGroups(dispatch.charlie)
factory:addGroups(dispatch.factory)
echo:addGroups(dispatch.echo)
krasnodar:addGroups(dispatch.krasnodar)
foxtrot:addGroups(dispatch.foxtrot)
oilfields:addGroups(dispatch.oilfields)
batumi:addGroups(dispatch.batumi)
indigo:addGroups(dispatch.indigo)
kobuleti:addGroups(dispatch.kobuleti)
senaki:addGroups(dispatch.senaki)
kutasi:addGroups(dispatch.kutasi)
oilrig:addGroups(dispatch.oilrig)
khashuri:addGroups(dispatch.khashuri)
tiblisi:addGroups(dispatch.tiblisi)
vaziani:addGroups(dispatch.vaziani)
refinery:addGroups(dispatch.refinery)
juliet:addGroups(dispatch.juliet)

bc:addZone(anapa)
bc:addZone(carrier)
bc:addZone(alpha)
bc:addZone(bravo)
bc:addZone(charlie)
bc:addZone(convoy)
bc:addZone(krymsk)
bc:addZone(oilfields)
bc:addZone(radio)
bc:addZone(delta)
bc:addZone(factory)
bc:addZone(samsite)
bc:addZone(foxtrot)
bc:addZone(echo)
bc:addZone(krasnodar)
bc:addZone(batumi)
bc:addZone(golf)
bc:addZone(hotel)
bc:addZone(indigo)
bc:addZone(kobuleti)
bc:addZone(senaki)
bc:addZone(kutasi)
bc:addZone(samsite3)
bc:addZone(samsite4)
bc:addZone(refinery)
bc:addZone(radio2)
bc:addZone(factory2)
bc:addZone(juliet)
bc:addZone(carrier2)
bc:addZone(oilrig)
bc:addZone(samsite2)
bc:addZone(samsite5)
bc:addZone(khashuri)
bc:addZone(tiblisi)
bc:addZone(vaziani)
bc:addZone(refinery)

bc:addConnection("Anapa","Alpha")
bc:addConnection("Alpha","Bravo")
bc:addConnection("Bravo","Krymsk")
bc:addConnection("Bravo","Charlie")
bc:addConnection("Bravo","Convoy")
bc:addConnection("Anapa","Charlie")
bc:addConnection("Bravo","Oil Fields")
bc:addConnection("Krymsk","Oil Fields")
bc:addConnection("Krymsk","Radio Tower")
bc:addConnection("Krymsk","Factory")
bc:addConnection("Krymsk","Delta")
bc:addConnection("Factory","Delta")
bc:addConnection("Factory","Foxtrot")
bc:addConnection("Factory","Echo")
bc:addConnection("Delta","Echo")
bc:addConnection("Foxtrot","Krasnodar")
bc:addConnection("Echo","Krasnodar")
bc:addConnection("Echo","SAM Site")
bc:addConnection("Krymsk","SAM Site")
bc:addConnection("BATUMI", "GOLF")
bc:addConnection("BATUMI", "HOTEL")
bc:addConnection("BATUMI", "INDIGO")
bc:addConnection("INDIGO", "GOLF")
bc:addConnection("INDIGO", "HOTEL")
bc:addConnection("INDIGO", "KOBULETI")
bc:addConnection("KOBULETI", "INDIGO")
bc:addConnection("KOBULETI", "SENAKI")
bc:addConnection("KOBULETI", "KUTASI")
bc:addConnection("SENAKI", "KOBULETI")
bc:addConnection("SENAKI", "SAM Site 3")
bc:addConnection("SENAKI", "SAM Site 4")
bc:addConnection("SENAKI", "Refinery")
bc:addConnection("SENAKI", "Radio Tower2")
bc:addConnection("SENAKI", "Factory 2")
bc:addConnection("SENAKI", "KUTASI")
bc:addConnection("SENAKI", "JULIET")
bc:addConnection("KUTASI", "SENAKI")
bc:addConnection("KUTASI", "SAM Site 4")
bc:addConnection("KUTASI", "Radio Tower2")
bc:addConnection("KUTASI", "Factory 2")
bc:addConnection("KUTASI", "SAM Site 2")
bc:addConnection("Oil Rig", "SENAKI")
bc:addConnection("Oil Rig", "BATUMI")
bc:addConnection("Khashuri", "KUTASI")
bc:addConnection("Khashuri", "SAM Site 2")
bc:addConnection("Khashuri", "SAM Site 5")
bc:addConnection("Tiblisi", "Krymsk")
bc:addConnection("Tiblisi", "Krasnodar")
bc:addConnection("Tiblisi", "KOBULETI")
bc:addConnection("Tiblisi", "SENAKI")
bc:addConnection("Tiblisi", "KUTASI")
bc:addConnection("Vaziani", "Anapa")
bc:addConnection("Vaziani", "Krymsk")
bc:addConnection("Vaziani", "Krasnodar")
bc:addConnection("Vaziani", "KOBULETI")
bc:addConnection("Vaziani", "SENAKI")
bc:addConnection("Vaziani", "KUTASI")
bc:addConnection("Vaziani", "BATUMI")
--bc:addConnection("Vaziani", "Khashuri")
bc:addConnection("Refinery", "SENAKI")
bc:addConnection("JULIET", "KOBULETI")

convoy:registerTrigger('lost', function (event, sender)
	local convoyItems = {'convoy1','convoy2','convoy3', 'convoy4'}
	
	local message = "Convoy liberated"
	local totalLost = 0
	for i,v in ipairs(convoyItems) do
		if not StaticObject.getByName(v) then
			totalLost = totalLost+1
		end
	end
	
	if totalLost>0 then
		local percentLost = math.ceil((totalLost/#convoyItems)*100)
		percentLost = math.min(percentLost,100)
		percentLost = math.max(percentLost,1)
		message = message..' but we lost '..percentLost..'% of the trucks.'
	else
		message = message..'. We recovered all of the supplies.'
	end
	
	local creditsEarned = (#convoyItems - totalLost) * 250
	message = message..'\n\n+'..creditsEarned..' credits'
	
	bc:addFunds(2, creditsEarned)
	
	trigger.action.outTextForCoalition(2, message, 15)
end, 'convoyLost', 1)

local showCredIncrease = function(event, sender)
	trigger.action.outTextForCoalition(sender.side, '+'..math.floor(sender.income*360)..' Credits/Hour', 5)
end

oilfields:registerTrigger('captured', showCredIncrease, 'oilfieldcaptured')
factory:registerTrigger('captured', showCredIncrease, 'factorycaptured')
refinery:registerTrigger('captured', showCredIncrease, 'refinerycaptured')
oilrig:registerTrigger('captured', showCredIncrease, 'oilrigcaptured')


krymsk:registerTrigger('captured', function(event,sender)
	local kr = bc:getZoneByName('Krymsk')
	if kr.side == 1 then
		local krforces = { 'krymsk-gforce-1','krymsk-gforce-2','krymsk-gforce-3','krymsk-tforce-1' }
		for _,v in ipairs(krforces) do
			local g = Group.getByName(v)
			if g then
				g:destroy()
			end
		end
	end
end, 'krymskcaptured')

senaki:registerTrigger('captured', function(event,sender)
	local kr = bc:getZoneByName('SENAKI')
	if kr.side == 1 then
		local kuforces = { 'kutasi-gforce-1','kutasi-gforce-2','kutasi-gforce-3','kutasi-tforce-1' }
		for _,v in ipairs(kuforces) do
			local g = Group.getByName(v)
			if g then
				g:destroy()
			end
		end
	end
end, 'senakicaptured')

local checkMissionComplete = function (event, sender)
	local done = true
	for i,v in ipairs(bc:getZones()) do
		if v.side == 1 then
			done = false
			break
		end
	end
	
	if done then
		trigger.action.outText("Enemy has been defeated. \n\nMission Complete.", 120)
	end
end

for i,v in ipairs(bc:getZones()) do
	v:registerTrigger('lost', checkMissionComplete, 'missioncompleted')
end

--bc:addFunds(1,0)
--bc:addFunds(2,0)

Group.getByName('sead1'):destroy()
local seadTargetMenu = nil
bc:registerShopItem('sead', 'F/A-18C SEAD mission', 250, function(sender) 
	local gr = Group.getByName('sead1')
	if Utils.isGroupActive(gr) then 
		return 'SEAD mission still in progress'
	end
	mist.respawnGroup('sead1', true)
	
	if seadTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if Group.getByName('sead1') then
			local err = bc:engageZone(target, 'sead1')
			if err then
				return err
			end
			
			trigger.action.outTextForCoalition(2, 'F/A-18C Hornets engaging SAMs at '..target, 15)
		else
			trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
		end
		
		seadTargetMenu = nil
	end
	
	seadTargetMenu = bc:showTargetZoneMenu(2, 'SEAD Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'F/A-18C Hornets on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('sead1')
		if Utils.isGroupActive(gr) then 
			return 'SEAD mission still in progress'
		end
		
		mist.respawnGroup('sead1', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('sead1') then
				local err = bc:engageZone(target, 'sead1')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F/A-18C Hornets engaging SAMs at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('sead2'):destroy()
local seadTargetMenu = nil
bc:registerShopItem('sead2', '[SOUTHERN FRONT] F/A-18C SEAD mission', 250, function(sender) 
	local gr = Group.getByName('sead2')
	if Utils.isGroupActive(gr) then 
		return 'SEAD mission still in progress'
	end
	mist.respawnGroup('sead2', true)
	
	if seadTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if Group.getByName('sead2') then
			local err = bc:engageZone(target, 'sead2')
			if err then
				return err
			end
			
			trigger.action.outTextForCoalition(2, 'F/A-18C Hornets engaging SAMs at '..target, 15)
		else
			trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
		end
		
		seadTargetMenu = nil
	end
	
	seadTargetMenu = bc:showTargetZoneMenu(2, 'SEAD Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'F/A-18C Hornets on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('sead2')
		if Utils.isGroupActive(gr) then 
			return 'SEAD mission still in progress'
		end
		
		mist.respawnGroup('sead2', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('sead2') then
				local err = bc:engageZone(target, 'sead2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F/A-18C Hornets engaging SAMs at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('sweep1'):destroy()
bc:registerShopItem('sweep', 'F-14B Fighter Sweep', 150, function(sender) 
	local gr = Group.getByName('sweep1')
	if Utils.isGroupActive(gr) then 
		return 'Fighter sweep mission still in progress'
	end
	mist.respawnGroup('sweep1', true)
end,
function (sender, params)
	local gr = Group.getByName('sweep1')
	if Utils.isGroupActive(gr) then 
		return 'Fighter sweep mission still in progress'
	end
	mist.respawnGroup('sweep1', true)
end)

Group.getByName('sweep2'):destroy()
bc:registerShopItem('sweep2', '[SOUTHERN FRONT] F-16 Fighter Sweep', 150, function(sender) 
	local gr = Group.getByName('sweep2')
	if Utils.isGroupActive(gr) then 
		return 'Fighter sweep mission still in progress'
	end
	mist.respawnGroup('sweep2', true)
end,
function (sender, params)
	local gr = Group.getByName('sweep2')
	if Utils.isGroupActive(gr) then 
		return 'Fighter sweep mission still in progress'
	end
	mist.respawnGroup('sweep2', true)
end)

Group.getByName('cas1'):destroy()
local casTargetMenu = nil
bc:registerShopItem('cas', 'F-4 Ground Attack', 400, function(sender) 
	local gr = Group.getByName('cas1')
	if Utils.isGroupActive(gr) then 
		return 'Ground attack mission still in progress'
	end
	
	mist.respawnGroup('cas1', true)
	
	if casTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if casTargetMenu then
			if Group.getByName('cas1') then
				local err = bc:engageZone(target, 'cas1')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F-4 Phantoms engaging groups at '..target, 15)
			else
				trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
			end
			
			casTargetMenu = nil
		end
	end
	
	casTargetMenu = bc:showTargetZoneMenu(2, 'F-4 Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'F-4 Phantoms on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('cas1')
		if Utils.isGroupActive(gr) then 
			return 'Ground attack mission still in progress'
		end
		
		mist.respawnGroup('cas1', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('cas1') then
				local err = bc:engageZone(target, 'cas1')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F-4 Phantoms engaging groups at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

bc:registerShopItem('cas2', '[SOUTHERN FRONT] A-10 Ground Attack', 400, function(sender) 
	local gr = Group.getByName('cas2')
	if Utils.isGroupActive(gr) then 
		return 'Ground attack mission still in progress'
	end
	
	mist.respawnGroup('cas2', true)
	
	if casTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if casTargetMenu then
			if Group.getByName('cas2') then
				local err = bc:engageZone(target, 'cas2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'A-10s engaging groups at '..target, 15)
			else
				trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
			end
			
			casTargetMenu = nil
		end
	end
	
	casTargetMenu = bc:showTargetZoneMenu(2, 'A-10 Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'A-10s on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('cas2')
		if Utils.isGroupActive(gr) then 
			return 'Ground attack mission still in progress'
		end
		
		mist.respawnGroup('cas2', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('cas2') then
				local err = bc:engageZone(target, 'cas2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'A-10 Warthogs engaging groups at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

bc:addMonitoredROE('cruise1')
local cruiseMissileTargetMenu = nil
bc:registerShopItem('cruisemsl', 'Cruise Missile Strike', 800, function(sender)
	if cruiseMissileTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if cruiseMissileTargetMenu then
			local err = bc:fireAtZone(target, 'cruise1', true, 8)
			if err then
				return err
			end
			
			cruiseMissileTargetMenu = nil
			trigger.action.outTextForCoalition(2, 'Launching cruise missiles at '..target, 15)
		end
	end
	
	cruiseMissileTargetMenu = bc:showTargetZoneMenu(2, 'Cruise Missile Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'Cruise missiles ready. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local err = bc:fireAtZone(params.zone.zone, 'cruise1', true, 8)
		if err then
			return err
		end
		
		trigger.action.outTextForCoalition(2, 'Launching cruise missiles at '..params.zone.zone, 15)
	else
		return 'Can only target enemy zone'
	end
end)

bc:addMonitoredROE('cruise2')
local cruiseMissileTargetMenu = nil
bc:registerShopItem('cruisemsl2', '[SOUTHERN FRONT] Cruise Missile Strike', 800, function(sender)
	if cruiseMissileTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if cruiseMissileTargetMenu then
			local err = bc:fireAtZone(target, 'cruise2', true, 8)
			if err then
				return err
			end
			
			cruiseMissileTargetMenu = nil
			trigger.action.outTextForCoalition(2, 'Launching cruise missiles at '..target, 15)
		end
	end
	
	cruiseMissileTargetMenu = bc:showTargetZoneMenu(2, 'Cruise Missile Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'Cruise missiles ready. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local err = bc:fireAtZone(params.zone.zone, 'cruise2', true, 8)
		if err then
			return err
		end
		
		trigger.action.outTextForCoalition(2, 'Launching cruise missiles at '..params.zone.zone, 15)
	else
		return 'Can only target enemy zone'
	end
end)

local upgradeMenu = nil
bc:registerShopItem('supplies', 'Resupply friendly Zone', 200, function(sender)
	if upgradeMenu then
		return 'Choose zone from F10 menu'
	end
	
	local upgradeZone = function(target)
		if upgradeMenu then
			local zn = bc:getZoneByName(target)
			if zn and zn.side==2 then
				zn:upgrade()
			else
				return 'Zone not friendly'
			end
			
			upgradeMenu = nil
		end
	end
	
	upgradeMenu = bc:showTargetZoneMenu(2, 'Select Zone to resupply', upgradeZone, 2)
	
	trigger.action.outTextForCoalition(2, 'Supplies prepared. Choose zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		params.zone:upgrade()
	else
		return 'Can only target friendly zone'
	end
end)

Group.getByName('jtacDrone'):destroy()
local jtacTargetMenu = nil
drone = JTAC:new({name = 'jtacDrone'})
bc:registerShopItem('jtac', 'MQ-1A Predator JTAC mission', 100, function(sender)
	
	if jtacTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local spawnAndOrbit = function(target)
		if jtacTargetMenu then
			local zn = bc:getZoneByName(target)
			drone:deployAtZone(zn)
			drone:showMenu()
			trigger.action.outTextForCoalition(2, 'Predator drone deployed over '..target, 15)
			jtacTargetMenu = nil
		end
	end
	
	jtacTargetMenu = bc:showTargetZoneMenu(2, 'Deploy JTAC', spawnAndOrbit, 1)
	
	trigger.action.outTextForCoalition(2, 'Choose which zone to deploy JTAC at from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 1 then
		drone:deployAtZone(params.zone)
		drone:showMenu()
		trigger.action.outTextForCoalition(2, 'Predator drone deployed over '..params.zone.zone, 15)
	else
		return 'Can only target enemy zone'
	end
end)


local smoketargets = function(tz)
	local units = {}
	for i,v in pairs(tz.built) do
		local g = Group.getByName(v)
		for i2,v2 in ipairs(g:getUnits()) do
			table.insert(units, v2)
		end
	end
	
	local tgts = {}
	for i=1,3,1 do
		if #units > 0 then
			local selected = math.random(1,#units)
			table.insert(tgts, units[selected])
			table.remove(units, selected)
		end
	end
	
	for i,v in ipairs(tgts) do
		local pos = v:getPosition().p
		trigger.action.smoke(pos, 1)
	end
end

local smokeTargetMenu = nil
bc:registerShopItem('smoke', 'Smoke markers', 20, function(sender)
	if smokeTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if smokeTargetMenu then
			local tz = bc:getZoneByName(target)
			smoketargets(tz)
			smokeTargetMenu = nil
			trigger.action.outTextForCoalition(2, 'Targets marked with RED smoke at '..target, 15)
		end
	end
	
	smokeTargetMenu = bc:showTargetZoneMenu(2, 'Smoke marker target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'Choose target zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 1 then
		smoketargets(params.zone)
		trigger.action.outTextForCoalition(2, 'Targets marked with RED smoke at '..params.zone.zone, 15)
	else
		return 'Can only target enemy zone'
	end
end)

local spawnAwacs = function(sender) 
	local gr = Group.getByName('awacs1')
	if Utils.isGroupActive(gr) then 
		return 'Darkstar still active on 252.00 MHz AM'
	end
	mist.respawnGroup('awacs1', true)
	trigger.action.outTextForCoalition(2,'Darkstar active on 252.00 MHz AM',15)
end
Group.getByName('awacs1'):destroy()
bc:registerShopItem('awacs', 'AWACS', 100, spawnAwacs, spawnAwacs)

local spawnAwacs = function(sender) 
	local gr = Group.getByName('texaco1')
	if Utils.isGroupActive(gr) then 
		return 'Texaco is still active on 315.00 MHz AM'
	end
	mist.respawnGroup('texaco1', true)
	trigger.action.outTextForCoalition(2,'Texaco active on 315.00 MHz AM',15)
end
Group.getByName('texaco1'):destroy()
bc:registerShopItem('texaco', 'TEXACO', 100, spawnAwacs, spawnAwacs)

Group.getByName('ewAircraft'):destroy()
local jamMenu = nil
bc:registerShopItem('jam', 'Jam radars at zone', 500, function(sender)
	local gr = Group.getByName('ewAircraft')
	if Utils.isGroupActive(gr) then 
		return 'Jamming mission still in progress'
	end
	
	mist.respawnGroup('ewAircraft', true)
	
	if jamMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local startJam = function(target)
		if jamMenu then
			bc:jamRadarsAtZone('ewAircraft', target)
			jamMenu = nil
			trigger.action.outTextForCoalition(2, 'Growler jamming radars at '..target, 15)
		end
	end
	
	jamMenu = bc:showTargetZoneMenu(2, 'Jamming target', startJam, 1)
	trigger.action.outTextForCoalition(2, 'Choose target zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('ewAircraft')
		if Utils.isGroupActive(gr) then 
			return 'Jamming mission still in progress'
		end
		
		mist.respawnGroup('ewAircraft', true)
		
		mist.scheduleFunction(function(target)
			local ew = Group.getByName('ewAircraft')
			if ew then
				local err = bc:jamRadarsAtZone('ewAircraft', target)
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'Growler jamming radars at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
		
	else
		return 'Can only target enemy zone'
	end
end)

tanksMenu = nil
bc:registerShopItem('armor', 'Deploy armor (for combined arms)', 100, function(sender)
	
	if tanksMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployTanks = function(target)
		if tanksMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-tanks')
			
			tanksMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly armor deployed at '..target, 15)
		end
	end
	
	tanksMenu = bc:showTargetZoneMenu(2, 'Deploy armor (Choose friendly zone)', deployTanks, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-tanks')
		trigger.action.outTextForCoalition(2, 'Friendly armor deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

artyMenu = nil
bc:registerShopItem('artillery', 'Deploy artillery (for combined arms)', 100, function(sender)
	
	if artyMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployArty = function(target)
		if artyMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-arty')
			
			artyMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly artillery deployed at '..target, 15)
		end
	end
	
	artyMenu = bc:showTargetZoneMenu(2, 'Deploy artillery (Choose friendly zone)', deployArty, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-arty')
		trigger.action.outTextForCoalition(2, 'Friendly artillery deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

reconMenu = nil
bc:registerShopItem('recon', 'Deploy recon group (for combined arms)', 50, function(sender)
	
	if reconMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployRecon = function(target)
		if reconMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-recon')
			
			reconMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly recon group deployed at '..target, 15)
		end
	end
	
	reconMenu = bc:showTargetZoneMenu(2, 'Deploy recon group (Choose friendly zone)', deployRecon, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-recon')
		trigger.action.outTextForCoalition(2, 'Friendly recon group deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

airdefMenu = nil
bc:registerShopItem('airdef', 'Deploy air defence (for combined arms)', 150, function(sender)
	
	if airdefMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployAirDef = function(target)
		if airdefMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-airdef')
			
			airdefMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly air defence deployed at '..target, 15)
		end
	end
	
	airdefMenu = bc:showTargetZoneMenu(2, 'Deploy air defence (Choose friendly zone)', deployAirDef, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-airdef')
		trigger.action.outTextForCoalition(2, 'Friendly air defence deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

bc:addShopItem(2, 'sead', -1)
bc:addShopItem(2, 'sead2', -1)
bc:addShopItem(2, 'sweep', -1)
bc:addShopItem(2, 'sweep2', -1)
bc:addShopItem(2, 'cas', -1)
bc:addShopItem(2, 'cas2', -1)
bc:addShopItem(2, 'cruisemsl', 12)
bc:addShopItem(2, 'cruisemsl2', 12)
bc:addShopItem(2, 'supplies', -1)
bc:addShopItem(2, 'jtac', -1)
bc:addShopItem(2, 'smoke', -1)
bc:addShopItem(2, 'jam', -1)
bc:addShopItem(2, 'awacs', -1)
bc:addShopItem(2, 'texaco', -1)

bc:addShopItem(2, 'armor', -1)
bc:addShopItem(2, 'artillery', -1)
bc:addShopItem(2, 'recon', -1)
bc:addShopItem(2, 'airdef', -1)

--red support
Group.getByName('redcas1'):destroy()
bc:registerShopItem('redcas1', 'Red Cas', 1000, function(sender) 
	local gr = Group.getByName('redcas1')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	mist.respawnGroup('redcas1', true)
	trigger.action.outTextForCoalition(2,'The enemy has deployed a couple of Su-34 against our ground forces',15)
end)

Group.getByName('redcas2'):destroy()
bc:registerShopItem('redcas2', 'Red Cas South', 1000, function(sender) 
	local gr = Group.getByName('redcas2')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	mist.respawnGroup('redcas2', true)
	trigger.action.outTextForCoalition(2,'The enemy has deployed a couple of Su-34 against our ground forces',15)
end)


Group.getByName('redcap1'):destroy()
bc:registerShopItem('redcap1', 'Red Cap', 1000, function(sender) 
	local gr = Group.getByName('redcap1')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	mist.respawnGroup('redcap1', true)
	trigger.action.outTextForCoalition(2,'Enemy MiG-31 interceptors, coming in from the South-East',15)
end)

Group.getByName('redcap2'):destroy()
bc:registerShopItem('redcap2', 'Red Cap South', 1000, function(sender) 
	local gr = Group.getByName('redcap2')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	mist.respawnGroup('redcap2', true)
	trigger.action.outTextForCoalition(2,'Enemy MiG-31 interceptors, coming in from the East',15)
end)

Group.getByName('redsead1'):destroy()
bc:registerShopItem('redsead1', 'Red Sead', 1000, function(sender) 
	local gr = Group.getByName('redsead1')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	mist.respawnGroup('redsead1', true)
	trigger.action.outTextForCoalition(2,'The enemy has launched an attack from the North-East on our air defenses',15)
end)

Group.getByName('redsead2'):destroy()
bc:registerShopItem('redsead2', 'Red Sead South', 1000, function(sender) 
	local gr = Group.getByName('redsead2')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	mist.respawnGroup('redsead2', true)
	trigger.action.outTextForCoalition(2,'The enemy has launched an attack from the East on our air defenses',15)
end)

Group.getByName('redmlrs1'):destroy()
bc:registerShopItem('redmlrs1', 'spawn Red mlrs', 1000, function(sender) 
	local zn = bc:getZoneByName('Foxtrot')
	if zn.side == 1 and zn.active then
		local gr = Group.getByName('redmlrs1')
		if gr then
			local full = true
			for i,v in ipairs(gr:getUnits()) do
				for i2,v2 in ipairs(v:getAmmo()) do
					if v2.count < 3 then
						full = false
						break
					end
				end
				
				if not full then 
					break
				end
			end
			
			if full and gr:getSize()==gr:getInitialSize() then
				return 'ammo full'
			end
			
			trigger.action.outTextForCoalition(2,'The enemy has resupplied its artillery near Foxtrot',15)
		end
		
		mist.respawnGroup('redmlrs1')
		bc:removeShopItem(1,'redmlrs1fire')
		bc:addShopItem(1, 'redmlrs1fire', 3)
	else
		return 'zone not red'
	end
end)

bc:registerShopItem('redmlrs1fire', 'fire red mlrs', 200, function(sender) 
	local gr = Group.getByName('redmlrs1')
	if gr then
		local targetzones = {'Echo', 'Delta', 'SAM Site', 'Factory', 'Radio Tower', 'Krymsk'}
		local viabletargets = {}
		for i,v in ipairs(targetzones) do
			local z = bc:getZoneByName(v)
			
			if z and z.side == 2 then
				table.insert(viabletargets, v)
			end
		end

		if #viabletargets==0 then
			return 'no targets'
		end
		
		local targetzn = viabletargets[math.random(1,#viabletargets)]
		
		local err = bc:fireAtZone(targetzn, 'redmlrs1', true, 3, 6)
		
		if not err then
			trigger.action.outTextForCoalition(2,'Enemy artillery near Foxtrot has begun preparations to fire on '..targetzn,15)
		else
			return err
		end
	else
		return 'buy first'
	end
end)


Group.getByName('intercept1'):destroy()
Group.getByName('intercept2'):destroy()
local cargoDieEvent = nil
bc:registerShopItem('intercept1', 'Red intercept', 1000, function(sender) 
	local grt = Group.getByName('intercept1')
	local gre = Group.getByName('intercept2')
	if gre and gre:getSize()>0 and gre:getController():hasTask() then 
		return 'still alive'
	end
	
	if grt and grt:getSize()>0 and grt:getController():hasTask() then 
		return 'still alive'
	end
	
	mist.respawnGroup('intercept1', true)
	mist.respawnGroup('intercept2', true)
	
	if not cargoDieEvent then
		local cargoPlaneDied = function(event)
			if event.id==28 then
				if event.initiator and event.initiator:getCoalition()==2 and event.target and event.target.getName then
					if event.target:getName()=='intercept1' then
						trigger.action.outTextForCoalition(2,'Enemy cargo transport destroyed.\n+500 credits',15)
						bc:addFunds(2,500)
						mist.removeEventHandler(cargoDieEvent)
						cargoDieEvent = nil
					elseif not Unit.getByName('intercept1') then
						mist.removeEventHandler(cargoDieEvent)
						cargoDieEvent = nil
					end
				end
			end
		end
		
		cargoDieEvent = mist.addEventHandler(cargoPlaneDied)
	end
end)

Group.getByName('escort1'):destroy()
Group.getByName('antiescort1'):destroy()
Group.getByName('antiescort2'):destroy()
bc:registerShopItem('escort1', 'Red antiescort', 1000, function(sender) 
	local gr = Group.getByName('escort1')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	
	mist.respawnGroup('escort1', true)
	
	local spawnIntercept = function(groupname)
		if Group.getByName('escort1') then
			local g = Group.getByName(groupname)
			if not g then
				if math.random(1,100) > 30 then
					if math.random(1,100) > 50 then
						trigger.action.outTextForCoalition(2,'Enemy interceptor spotted heading for our cargo transport.',15)
					else
						trigger.action.outTextForCoalition(2,'The enemy has launched an intercept mission against our cargo transport',15)
					end
					mist.respawnGroup(groupname, true)
				end
			end
		end
	end
	
	local timers = {math.random(3*60,15*60), math.random(8*60,15*60)}
	mist.scheduleFunction(spawnIntercept, {'antiescort1'}, timer.getTime()+timers[1])
	mist.scheduleFunction(spawnIntercept, {'antiescort2'}, timer.getTime()+timers[2])
end)

krymskForce = {
	'krymsk-force-1',
	'krymsk-force-2',
	'krymsk-force-3',
	'krymsk-gforce-1',
	'krymsk-gforce-2',
	'krymsk-gforce-3',
	'krymsk-tforce-1',
	'krymsk-aforce-1',
	'krymsk-aforce-2',
	'krymsk-aforce-3',
}

for _,v in ipairs(krymskForce) do Group.getByName(v):destroy() end

bc:registerShopItem('krymskForce', 'Krymsk Assault', 1000, function(sender) 
	for _,v in ipairs(krymskForce) do
		local gr = Group.getByName(v)
		if gr and gr:getSize()>0 and gr:getController():hasTask() then 
			return 'still alive'
		end
	end
	
	if bc:getZoneByName('Echo').side==1 and bc:getZoneByName('Krymsk').side==2 then
		for _,v in ipairs(krymskForce) do
			mist.respawnGroup('krymsk-force-1', true)
			mist.respawnGroup('krymsk-force-2', true)
			mist.respawnGroup('krymsk-force-3', true)
			
			if bc:getZoneByName('Delta').side==1 then
				mist.respawnGroup('krymsk-tforce-1', true)
			end
			
			mist.respawnGroup('krymsk-aforce-1', true)
			mist.respawnGroup('krymsk-aforce-2', true)
			mist.respawnGroup('krymsk-aforce-3', true)
		end
	else
		return 'zone no match'
	end
end)

kutasiForce = {
	'kutasi-force-1',
	'kutasi-force-2',
	'kutasi-force-3',
	'kutasi-gforce-1',
	'kutasi-gforce-2',
	'kutasi-gforce-3',
	'kutasi-tforce-1',
	'kutasi-aforce-1',
	'kutasi-aforce-2',
	'kutasi-aforce-3',
	'kutasi-aforce-4',
}

for _,v in ipairs(kutasiForce) do Group.getByName(v):destroy() end

bc:registerShopItem('kutasiForce', 'Kutasi Assault', 1000, function(sender) 
	for _,v in ipairs(kutasiForce) do
		local gr = Group.getByName(v)
		if gr and gr:getSize()>0 and gr:getController():hasTask() then 
			return 'still alive'
		end
	end
	
	if bc:getZoneByName('SAM Site 4').side==1 and bc:getZoneByName('KOBULETI').side==2 then
		for _,v in ipairs(kutasiForce) do
			mist.respawnGroup('kutasi-force-1', true)
			mist.respawnGroup('kutasi-force-2', true)
			mist.respawnGroup('kutasi-force-3', true)
			
			if bc:getZoneByName('Radio Tower2').side==1 then
				mist.respawnGroup('kutasi-tforce-1', true)
			end
			
			mist.respawnGroup('kutasi-aforce-1', true)
			mist.respawnGroup('kutasi-aforce-2', true)
			mist.respawnGroup('kutasi-aforce-3', true)
			mist.respawnGroup('kutasi-aforce-4', true)
		end
	else
		return 'zone no match'
	end
end)

bc:addShopItem(1, 'redcas1', -1)
bc:addShopItem(1, 'redcap1', -1)
bc:addShopItem(1, 'redsead1', -1)
bc:addShopItem(1, 'redmlrs1', -1)
bc:addShopItem(1, 'intercept1', -1)
bc:addShopItem(1, 'escort1', -1)
bc:addShopItem(1, 'krymskForce', -1)
bc:addShopItem(1, 'kutasiForce', -1)
bc:addShopItem(1, 'redcap2', -1)
bc:addShopItem(1, 'redcas2', -1)
bc:addShopItem(1, 'redsead2', -1)

budgetAI = BudgetCommander:new({ battleCommander = bc, side=1, decissionFrequency=20*60, decissionVariance=10*60, skipChance = 10})
budgetAI:init()
--end red support

lc = LogisticCommander:new({battleCommander = bc, supplyZones = {'Anapa', 'Krymsk', 'Factory', 'Bravo', 'Echo', 'Carrier Group','BATUMI', 'INDIGO', 'KOBULETI', 'SENAKI', 'KUTASI', 'Carrier Group 2', 'Factory 2', 'Oil Rig', 'Khashuri','Tiblisi','Soganlug','Vaziani'}})
lc:init()


bc:loadFromDisk() --will load and overwrite default zone levels, sides, funds and available shop items
bc:init()
bc:startRewardPlayerContribution(15,{infantry = 5, ground = 15, sam = 30, airplane = 30, ship = 200, helicopter=40, crate=100, rescue = 50})

HercCargoDropSupply.init(bc)

mc = MissionCommander:new({side = 2, battleCommander = bc, checkFrequency = 60})

mc:trackMission({
	title = "Escort",
	description = "Friendly cargo transport has entered the airspace from the south. Protect it from the enemy.",
	messageStart = "New mission: Escort",
	messageEnd = "Mission ended: Escort",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if Group.getByName('escort1') then return true end
		
		return false
	end
})

mc:trackMission({
	title = "Intercept",
	description = "Enemy cargo transport has entered the airspace from the south. Intercept and destroy it before it escapes.",
	messageStart = "New mission: Intercept",
	messageEnd = "Mission ended: Intercept",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if Group.getByName('intercept1') then return true end
		
		return false
	end
})

mc:trackMission({
	title = "Destroy artillery",
	description = "The enemy has deployed artillery near Foxtrot. Destroy it before it has a chance to fire",
	messageStart = "New mission: Destroy artillery",
	messageEnd = "Mission ended: Destroy artillery",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if Group.getByName('redmlrs1') then return true end
		
		return false
	end
})

mc:trackMission({
	title = "Defend Krymsk",
	description = "The enemy has launched an all out attack on Krymsk.\nDefend the airfield at all cost.",
	messageStart = "New mission: Defend Krymsk",
	messageEnd = "Mission ended: Defend Krymsk",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		for _,v in ipairs(krymskForce) do
			local gr = Group.getByName(v)
			if gr and gr:getSize()>0 and gr:getController():hasTask() then 
				return true
			end
		end
		
		return false
	end
})

mc:trackMission({
	title = "Defend Senaki",
	description = "The enemy has launched an all out attack on Senaki.\nDefend the airfield at all cost.",
	messageStart = "New mission: Defend Senaki",
	messageEnd = "Mission ended: Defend Senaki",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		for _,v in ipairs(kutasiForce) do
			local gr = Group.getByName(v)
			if gr and gr:getSize()>0 and gr:getController():hasTask() then 
				return true
			end
		end
		
		return false
	end
})

resupplyTarget = nil
mc:trackMission({
	title = function() return "Resupply "..resupplyTarget end,
	description = function() return "Deliver supplies to "..resupplyTarget end,
	messageStart = function() return "New mission: Resupply "..resupplyTarget end,
	messageEnd = function() return "Mission ended: Resupply "..resupplyTarget end,
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		resupplyTarget = nil
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if not resupplyTarget then return false end
		
		local targetzn = bc:getZoneByName(resupplyTarget)
		return targetzn:canRecieveSupply()
	end
})

attackTarget = nil
mc:trackMission({
	title = function() return "Attack "..attackTarget end,
	description = function() return "Destroy enemy forces at "..attackTarget end,
	messageStart = function() return "New mission: Attack "..attackTarget end,
	messageEnd = function() return "Mission ended: Attack "..attackTarget end,
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		attackTarget = nil 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if not attackTarget then return false end
		
		local targetzn = bc:getZoneByName(attackTarget)
		return targetzn.side == 1
	end
})

captureTarget = nil
mc:trackMission({
	title = function() return "Capture "..captureTarget end,
	description = function() return captureTarget.." is neutral. Capture it by delivering supplies" end,
	messageStart = function() return "New mission: Capture "..captureTarget end,
	messageEnd = function() return "Mission ended: Capture "..captureTarget end,
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		captureTarget = nil 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if not captureTarget then return false end
		
		local targetzn = bc:getZoneByName(captureTarget)
		return targetzn.side == 0 and targetzn.active
	end
})

function generateCaptureMission()
	if captureTarget ~= nil then return end
		
	local validzones = {}
	for _,v in ipairs(bc.zones) do
		if v.side == 0 and v.active then
			table.insert(validzones, v.zone)
		end
	end
	
	if #validzones == 0 then return end
	
	local choice = math.random(1, #validzones)
	if validzones[choice] then
		captureTarget = validzones[choice]
		return true
	end
end

function generateAttackMission()
	if attackTarget ~= nil then return end
		
	local validzones = {}
	for _,v in ipairs(bc.connections) do
		local to = bc:getZoneByName(v.to)
		local from = bc:getZoneByName(v.from)
		
		if from.side ~= to.side and from.side ~= 0  and to.side ~= 0 and from.active and to.active then
			if from.side == 1 then
				table.insert(validzones, from.zone)
			elseif to.side == 1 then
				table.insert(validzones, to.zone)
			end
		end
	end
	
	if #validzones == 0 then return end
	
	local choice = math.random(1, #validzones)
	if validzones[choice] then
		attackTarget = validzones[choice]
		return true
	end
end

function generateSupplyMission()
	if resupplyTarget ~= nil then return end
		
	local validzones = {}
	for _,v in ipairs(bc.zones) do
		if v.side == 2 and v:canRecieveSupply() then
			table.insert(validzones, v.zone)
		end
	end
	
	if #validzones == 0 then return end
	
	local choice = math.random(1, #validzones)
	if validzones[choice] then
		resupplyTarget = validzones[choice]
		return true
	end
end

timer.scheduleFunction(function(_, time)
	if generateCaptureMission() then
		return time+300
	else
		return time+120
	end
end, {}, timer.getTime() + 20)

timer.scheduleFunction(function(_, time)
	if generateAttackMission() then
		return time+300
	else
		return time+120
	end
end, {}, timer.getTime() + 40)

timer.scheduleFunction(function(_, time)
	if generateSupplyMission() then
		return time+300
	else
		return time+120
	end
end, {}, timer.getTime() + 60)

mc:init()

function respawnStatics()
	for i,v in pairs(cargoSpawns) do
		local farp = bc:getZoneByName(i)
		if farp then
			if farp.side==2 then
				for ix,vx in ipairs(v) do
					if not StaticObject.getByName(vx) then
						mist.respawnGroup(vx)
					end
				end
			else
				for ix,vx in ipairs(v) do
					local cr = StaticObject.getByName(vx)
					if cr then
						cr:destroy()
					end
				end
			end
		end
	end
	
	for i,v in pairs(farpSupply) do
		local farp = bc:getZoneByName(i)
		if farp then
			if farp.side==2 then
				for ix,vx in ipairs(v) do
					local gr = Group.getByName(vx)
					if not gr then
						mist.respawnGroup(vx)
					elseif gr:getSize() < gr:getInitialSize() then
						mist.respawnGroup(vx)
					end
				end
			else
				for ix,vx in ipairs(v) do
					local cr = Group.getByName(vx)
					if cr then
						cr:destroy()
					end
				end
			end
		end
	end
end

mist.scheduleFunction(respawnStatics, {}, timer.getTime() + 1, 30)