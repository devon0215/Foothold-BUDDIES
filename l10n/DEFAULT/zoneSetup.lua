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

seaBase = {
	blue = {"bShip","bShip"},
	red = {"rShip","rShip","rShip2"}
}

seaNormal = {
	blue = {"bShip","bShip"},
	red = {"rShip","rShip","rShip"}
}

airfield = {
	blue = {"bInfantry","bArmor","bSam"},
	red = {"rInfantry","rArmor","rIR","rSam"}
}

farp = {
	blue = {"bInfantry","bArmor","bSam"},
	red = {"rInfantry","rArmor","rIR"}
}

cargoSpawns = {
	["Bravo"] = {"c6","c7"},
	["Krymsk"] = {"c8","c9","c10"},
	["Echo"] = {"c12","c13"},
	["KrasnodarCenter"] = {"c14","c15"},
	["Krasnodar"] = {"c16","c17"},
	["Novorossiysk"] = {"c18","c19"},
	["Gelendzhik"] = {"c24","c25"},
	["Charlie"] = {"c26","c27"},
	["Delta"] = {"c28","c29"},
	["Sochi"] = {"c30","c31"},
	["Gudauta"] = {"c32","c33"},
	["Sukhumi"] = {"c34","c35"},
	["India"] = {"c36","c37"},
	["Senaki"] = {"c38","c39"},
	["Kobuleti"] = {"c40","c41"},
	["Batumi"] = {"c42","c43"},
	["Kutaisi"] = {"c46","c47"},
	["Juliet"] = {"c48","c49"},
	["Kilo"] = {"c50","c51"},
	["Tbilisi"] = {"c52","c53"},
	["Beslan"] = {"c54","c55"},
	["Mozdok"] = {"c56","c57"},
	["Nalchik"] = {"c58","c59"},
	["Hotel"] = {"c60","c61"},
	["Mineralnye"] = {"c62","c63"},
	["Lima"] = {"c64","c65"},
	["Golf"] = {"c66","c67"},
	["Mike"] = {"c68","c69"},
	["Foxtrot"] = {"c70","c71"},
	["Maykop"] = {"c22","c23"},
	["Alpha"] = {"c20","c21"}
}

farpSupply = {
	["Bravo"] = {"bravoFuelAndAmmo"},
	["Echo"] = {"echoFuelAndAmmo"},
	["Charlie"] = {"charlieFuelAndAmmo"},
	["Delta"] = {"deltaFuelAndAmmo"},
	["India"] = {"indiaFuelAndAmmo"},
	["Juliet"] = {"julietFuelAndAmmo"},
	["Kilo"] = {"kiloFuelAndAmmo"},
	["Hotel"] = {"hotelFuelAndAmmo"},
	["Lima"] = {"limaFuelAndAmmo"},
	["Golf"] = {"golfFuelAndAmmo"},
	["Mike"] = {"mikeFuelAndAmmo"},
	["Foxtrot"] = {"foxtrotFuelAndAmmo"},
	["Alpha"] = {"alphaFuelAndAmmo"}
}

cargoAccepts = {
	bravo =  allExcept(cargoSpawns, 'Bravo'),
	krymsk =  allExcept(cargoSpawns, 'Krymsk'),
	echo =  allExcept(cargoSpawns, 'Echo'),
	krasnodar = allExcept(cargoSpawns, 'Krasnodar'),
	krasnodarCenter = allExcept(cargoSpawns, 'KrasnodarCenter'),
	novorossiysk = allExcept(cargoSpawns, 'Novorossiysk'),
	gelendzhik = allExcept(cargoSpawns, 'Gelendzhik'),
	charlie = allExcept(cargoSpawns, 'Charlie'),
	delta = allExcept(cargoSpawns, 'Delta'),
	sochi = allExcept(cargoSpawns, 'Sochi'),
	gudauta = allExcept(cargoSpawns, 'Gudauta'),
	sukhumi = allExcept(cargoSpawns, 'Sukhumi'),
	india = allExcept(cargoSpawns, 'India'),
	senaki = allExcept(cargoSpawns, 'Senaki'),
	kobuleti = allExcept(cargoSpawns, 'Kobuleti'),
	batumi = allExcept(cargoSpawns, 'Batumi'),
	kutaisi = allExcept(cargoSpawns, 'Kutaisi'),
	juliet = allExcept(cargoSpawns, 'Juliet'),
	kilo = allExcept(cargoSpawns, 'Kilo'),
	tbilisi = allExcept(cargoSpawns, 'Tbilisi'),
	beslan = allExcept(cargoSpawns, 'Beslan'),
	mozdok = allExcept(cargoSpawns, 'Mozdok'),
	nalchik = allExcept(cargoSpawns, 'Nalchik'),
	hotel = allExcept(cargoSpawns, 'Hotel'),
	mineralnye = allExcept(cargoSpawns, 'Mineralnye'),
	lima = allExcept(cargoSpawns, 'Lima'),
	golf = allExcept(cargoSpawns, 'Golf'),
	mike = allExcept(cargoSpawns, 'Mike'),
	foxtrot = allExcept(cargoSpawns, 'Foxtrot'),
	maykop = allExcept(cargoSpawns, 'Maykop'),
	alpha = allExcept(cargoSpawns, 'Alpha'),
	general = allExcept(cargoSpawns)
}

flavor = {
	anapa = 'Airbase near the city of Anapa. Obelisk staging grounds.',
	obeliskSea = 'Naval task force near the city of Novorossiysk.',
	bravo='FARP next to the town of Damanka.',
	krymsk='Airbase next to the city of Krymsk.',
	echo='FARP next to the city of Krasnodar.',
	krasnodar='Airbase next to the city of Krasnodar.',
	krasnodarCenter='Airbase within Krasnodar city limits.',
	novorossiysk='Airbase next to the city of Novorossiysk.',
	gelendzhik='Airbase in the city of Gelendzhik.',
	charlie='FARP next to the town of Novomihaylovskiy.',
	delta='FARP next to the town of Chemitokvadze.',
	sochi='Airbase near the cities of Sochi and Adler.',
	gudauta='Airbase next to the city of Gudauta',
	gudautaSea='Naval task force near the city of Gudauta.',
	deltaSea='Naval task force near the town of Magri.',
	sukhumi='Airbase near the cities of Sukhumi and Babushara.',
	india='FARP near the town of Gali.',
	senaki='Airbase near the cities of Senaki and Kolkhi.',
	kobuleti='Airbase near the city of Kobuleti.',
	batumi='Airbase near the city of Batumi. BUDDIES Base of Operations.',
	buddiesSea='Naval task force near the city of Batumi. BUDDIES carrier group stationed here.',
	kutaisi='Airbase near the city of Kutaisi.',
	juliet='FARP near the city of Khashuri.',
	kilo='FARP near the town of Mukhrari.',
	tbilisi='Airbases within major city center of Tbilisi.',
	beslan='Airbase near the city of Beslan.',
	mozdok='Airbase near the city of Mozdok.',
	nalchik='Airbase near the city of Nalchik.',
	hotel='FARP near the city of Novopavlovsk.',
	mineralnye='Airbase near the city of Mineralnye Vody.',
	lima='FARP in the caucasian mountain range.',
	golf='FARP near the city of Cherkessk.',
	mike='FARP in the caucasian mountain range.',
	foxtrot='FARP east of the city of Maykop.',
	maykop='Airbase near the cities of Maykop and Khanskaya.',
	alpha='FARP south east of the city of Krasnodar.'
}

local filepath = 'foothold_1.4.lua'
if lfs then 
	local dir = lfs.writedir()..'Missions/Saves/'
	lfs.mkdir(dir)
	filepath = dir..filepath
	env.info('Foothold - Save file path: '..filepath)
end

bc = BattleCommander:new(filepath, 10, 60)

anapa = ZoneCommander:new({zone='Anapa', side=1, level=4, upgrades=airfield, crates=cargoAccepts.general, flavorText=flavor.anapa, income=1})
obeliskSea = ZoneCommander:new({zone='ObeliskSea', side=1, level=3, upgrades=seaBase, crates=cargoAccepts.general, flavorText=flavor.obeliskSea, income=1})
bravo = ZoneCommander:new({zone='Bravo', side=1, level=3, upgrades=farp, crates=cargoAccepts.bravo, flavorText=flavor.bravo, income=1})
krymsk = ZoneCommander:new({zone='Krymsk', side=1, level=4, upgrades=airfield, crates=cargoAccepts.krymsk, flavorText=flavor.krymsk, income=1})
echo = ZoneCommander:new({zone='Echo', side=1, level=3, upgrades=farp, crates=cargoAccepts.echo, flavorText=flavor.echo, income=1})
krasnodar = ZoneCommander:new({zone='Krasnodar', side=1, level=4, upgrades=airfield, crates=cargoAccepts.krasnodar, flavorText=flavor.krasnodar, income=1})
krasnodarCenter = ZoneCommander:new({zone='KrasnodarCenter', side=1, level=4, upgrades=airfield, crates=cargoAccepts.krasnodarCenter, flavorText=flavor.krasnodarCenter, income=1})
novorossiysk = ZoneCommander:new({zone='Novorossiysk', side=1, level=4, upgrades=airfield, crates=cargoAccepts.novorossiysk, flavorText=flavor.novorossiysk, income=1})
gelendzhik = ZoneCommander:new({zone='Gelendzhik', side=1, level=4, upgrades=airfield, crates=cargoAccepts.gelendzhik, flavorText=flavor.gelendzhik, income=1})
charlie = ZoneCommander:new({zone='Charlie', side=1, level=3, upgrades=farp, crates=cargoAccepts.charlie, flavorText=flavor.charlie, income=1})
delta = ZoneCommander:new({zone='Delta', side=1, level=3, upgrades=farp, crates=cargoAccepts.delta, flavorText=flavor.delta, income=1})
sochi = ZoneCommander:new({zone='Sochi', side=1, level=4, upgrades=airfield, crates=cargoAccepts.sochi, flavorText=flavor.sochi, income=1})
gudauta = ZoneCommander:new({zone='Gudauta', side=1, level=4, upgrades=airfield, crates=cargoAccepts.gudauta, flavorText=flavor.gudauta, income=1})
sukhumi = ZoneCommander:new({zone='Sukhumi', side=1, level=4, upgrades=airfield, crates=cargoAccepts.sukhumi, flavorText=flavor.sukhumi, income=1})
india = ZoneCommander:new({zone='India', side=1, level=3, upgrades=farp, crates=cargoAccepts.india, flavorText=flavor.india, income=1})
senaki = ZoneCommander:new({zone='Senaki', side=1, level=4, upgrades=airfield, crates=cargoAccepts.senaki, flavorText=flavor.senaki, income=1})
kobuleti = ZoneCommander:new({zone='Kobuleti', side=1, level=4, upgrades=airfield, crates=cargoAccepts.kobuleti, flavorText=flavor.kobuleti, income=1})
batumi = ZoneCommander:new({zone='Batumi', side=2, level=3, upgrades=airfield, crates=cargoAccepts.batumi, flavorText=flavor.batumi, income=1})
kutaisi = ZoneCommander:new({zone='Kutaisi', side=1, level=4, upgrades=airfield, crates=cargoAccepts.kutaisi, flavorText=flavor.kutaisi, income=1})
juliet = ZoneCommander:new({zone='Juliet', side=1, level=3, upgrades=farp, crates=cargoAccepts.juliet, flavorText=flavor.juliet, income=1})
kilo = ZoneCommander:new({zone='Kilo', side=1, level=3, upgrades=farp, crates=cargoAccepts.kilo, flavorText=flavor.kilo, income=1})
tbilisi = ZoneCommander:new({zone='Tbilisi', side=1, level=4, upgrades=airfield, crates=cargoAccepts.tbilisi, flavorText=flavor.tbilisi, income=1})
beslan = ZoneCommander:new({zone='Beslan', side=1, level=4, upgrades=airfield, crates=cargoAccepts.beslan, flavorText=flavor.beslan, income=1})
mozdok = ZoneCommander:new({zone='Mozdok', side=1, level=4, upgrades=airfield, crates=cargoAccepts.mozdok, flavorText=flavor.mozdok, income=1})
nalchik = ZoneCommander:new({zone='Nalchik', side=1, level=4, upgrades=airfield, crates=cargoAccepts.nalchik, flavorText=flavor.nalchik, income=1})
hotel = ZoneCommander:new({zone='Hotel', side=1, level=3, upgrades=farp, crates=cargoAccepts.hotel, flavorText=flavor.hotel, income=1})
mineralnye = ZoneCommander:new({zone='Mineralnye', side=1, level=4, upgrades=airfield, crates=cargoAccepts.mineralnye, flavorText=flavor.mineralnye, income=1})
lima = ZoneCommander:new({zone='Lima', side=1, level=3, upgrades=farp, crates=cargoAccepts.lima, flavorText=flavor.lima, income=1})
golf = ZoneCommander:new({zone='Golf', side=1, level=3, upgrades=farp, crates=cargoAccepts.golf, flavorText=flavor.golf, income=1})
mike = ZoneCommander:new({zone='Mike', side=1, level=3, upgrades=farp, crates=cargoAccepts.mike, flavorText=flavor.mike, income=1})
foxtrot = ZoneCommander:new({zone='Foxtrot', side=1, level=3, upgrades=farp, crates=cargoAccepts.foxtrot, flavorText=flavor.foxtrot, income=1})
buddiesSea = ZoneCommander:new({zone='BUDDIESSea', side=2, level=3, upgrades=seaBase, crates=cargoAccepts.general, flavorText=flavor.buddiesSea, income=1})
maykop = ZoneCommander:new({zone='Maykop', side=1, level=4, upgrades=airfield, crates=cargoAccepts.maykop, flavorText=flavor.maykop, income=1})
alpha = ZoneCommander:new({zone='Alpha', side=1, level=3, upgrades=farp, crates=cargoAccepts.alpha, flavorText=flavor.alpha, income=1})
deltaSea = ZoneCommander:new({zone='DeltaSea', side=1, level=3, upgrades=seaNormal, crates=cargoAccepts.general, flavorText=flavor.deltaSea, income=1})
gudautaSea = ZoneCommander:new({zone='GudautaSea', side=1, level=3, upgrades=seaNormal, crates=cargoAccepts.general, flavorText=flavor.gudautaSea, income=1})


dispatch = {
	krymsk = {
	},
	bravo = {
	},
	anapa = {
		GroupCommander:new({name='anapa1', mission='supply', targetzone='Bravo'}),
		GroupCommander:new({name='anapa2', mission='patrol', targetzone='Anapa'}),
		GroupCommander:new({name='anapa3', mission='attack', targetzone='Bravo'}),
		GroupCommander:new({name='anapa4', mission='supply', targetzone='Bravo', type='surface'}),
		GroupCommander:new({name='anapa5', mission='supply', targetzone='Novorossiysk'}),
		GroupCommander:new({name='anapa6', mission='supply', targetzone='Novorossiysk', type='surface'}),
		GroupCommander:new({name='anapa7', mission='attack', targetzone='Bravo', type='surface'}),
		GroupCommander:new({name='anapa8', mission='attack', targetzone='Novorossiysk', type='surface'}),
		GroupCommander:new({name='anapa9', mission='attack', targetzone='Novorossiysk'}),
		GroupCommander:new({name='anapa10', mission='attack', targetzone='Krymsk'}),
		GroupCommander:new({name='anapa11', mission='attack', targetzone='Gelendzhik'}),
		GroupCommander:new({name='anapa12', mission='attack', targetzone='KrasnodarCenter'}),
		GroupCommander:new({name='anapa13', mission='attack', targetzone='Krasnodar'}),
		GroupCommander:new({name='anapa14', mission='attack', targetzone='Maykop'}),
		GroupCommander:new({name='anapa15', mission='attack', targetzone='Sochi'}),
		GroupCommander:new({name='anapa16', mission='attack', targetzone='Mineralnye'})
	},
	echo={
	},
	krasnodar={
	},
	krasnodarCenter={
	},
	novorossiysk={
	},
	gelendzhik={
	},
	charlie={
	},
	delta={
	},
	sochi={
	},
	gudauta={
	},
	sukhumi={
	},
	india={
	},
	senaki={
	},
	kobuleti={
		GroupCommander:new({name='kobuleti1', mission='supply', targetzone='Batumi'}),
		GroupCommander:new({name='kobuleti2', mission='supply', targetzone='Senaki'}),
		GroupCommander:new({name='kobuleti3', mission='supply', targetzone='Kutaisi'}),
		GroupCommander:new({name='kobuleti4', mission='supply', targetzone='Senaki', type='surface'}),
		GroupCommander:new({name='kobuleti5', mission='supply', targetzone='Kutaisi', type='surface'}),
		GroupCommander:new({name='kobuleti6', mission='attack', targetzon='Senaki', type='surface'}),
		GroupCommander:new({name='kobuleti7', mission='attack', targetzone='Kutaisi', type='surface'}),
		GroupCommander:new({name='kobuleti8', mission='attack', targetzone='Senaki'}),
		GroupCommander:new({name='kobuleti9', mission='attack', targetzone='Kutaisi'}),
		GroupCommander:new({name='kobuleti10', mission='patrol', targetzone='Kobuleti'}),
		GroupCommander:new({name='kobuleti11', mission='attack', targetzone='Batumi', type='surface'}),
		GroupCommander:new({name='kobuleti12', mission='attack', targetzone='Batumi'}),
		GroupCommander:new({name='kobuleti13', mission='patrol', targetzone='Kobuleti'})
	},
	batumi={
		GroupCommander:new({name='batumi1', mission='supply', targetzone='BUDDIESSea'}),
		GroupCommander:new({name='batumi2', mission='supply', targetzone='Kobuleti'}),
		GroupCommander:new({name='batumi3', mission='supply', targetzone='Kobuleti', type='surface'}),
		GroupCommander:new({name='batumi4', mission='attack', targetzone='Kobuleti', type='surface'}),
		GroupCommander:new({name='batumi5', mission='attack', targetzone='Kobuleti'}),
		GroupCommander:new({name='batumi6', mission='patrol', targetzone='Batumi'})
	},
	kutaisi={
	},
	juliet={
	},
	kilo={
	},
	tbilisi={
	},
	beslan={
	},
	mozdok={
	},
	nalchik={
	},
	hotel={
	},
	mineralnye={
	},
	lima={
	},
	golf={
	},
	mike={
	},
	foxtrot={
	},
	buddiesSea={
	},
	obeliskSea={
	},
	maykop={
	},
	alpha={
	},
	deltaSea={
	},
	gudautaSea={
	}
}


anapa:addGroups(dispatch.anapa)
bravo:addGroups(dispatch.bravo)
krymsk:addGroups(dispatch.krymsk)
echo:addGroups(dispatch.echo)
krasnodar:addGroups(dispatch.krasnodar)
krasnodarCenter:addGroups(dispatch.krasnodarCenter)
novorossiysk:addGroups(dispatch.novorossiysk)
gelendzhik:addGroups(dispatch.gelendzhik)
charlie:addGroups(dispatch.charlie)
delta:addGroups(dispatch.delta)
sochi:addGroups(dispatch.sochi)
gudauta:addGroups(dispatch.gudauta)
sukhumi:addGroups(dispatch.sukhumi)
india:addGroups(dispatch.india)
senaki:addGroups(dispatch.senaki)
kobuleti:addGroups(dispatch.kobuleti)
batumi:addGroups(dispatch.batumi)
kutaisi:addGroups(dispatch.kutaisi)
juliet:addGroups(dispatch.juliet)
kilo:addGroups(dispatch.kilo)
tbilisi:addGroups(dispatch.tbilisi)
beslan:addGroups(dispatch.beslan)
mozdok:addGroups(dispatch.mozdok)
nalchik:addGroups(dispatch.nalchik)
hotel:addGroups(dispatch.hotel)
mineralnye:addGroups(dispatch.mineralnye)
lima:addGroups(dispatch.lima)
golf:addGroups(dispatch.golf)
mike:addGroups(dispatch.mike)
foxtrot:addGroups(dispatch.foxtrot)
buddiesSea:addGroups(dispatch.buddiesSea)
obeliskSea:addGroups(dispatch.obeliskSea)
maykop:addGroups(dispatch.maykop)
alpha:addGroups(dispatch.alpha)
deltaSea:addGroups(dispatch.deltaSea)


bc:addZone(anapa)
bc:addZone(obeliskSea)
bc:addZone(bravo)
bc:addZone(krymsk)
bc:addZone(echo)
bc:addZone(krasnodar)
bc:addZone(krasnodarCenter)
bc:addZone(novorossiysk)
bc:addZone(gelendzhik)
bc:addZone(charlie)
bc:addZone(delta)
bc:addZone(sochi)
bc:addZone(gudauta)
bc:addZone(sukhumi)
bc:addZone(india)
bc:addZone(senaki)
bc:addZone(kobuleti)
bc:addZone(batumi)
bc:addZone(kutaisi)
bc:addZone(juliet)
bc:addZone(kilo)
bc:addZone(tbilisi)
bc:addZone(beslan)
bc:addZone(mozdok)
bc:addZone(nalchik)
bc:addZone(hotel)
bc:addZone(mineralnye)
bc:addZone(lima)
bc:addZone(golf)
bc:addZone(mike)
bc:addZone(foxtrot)
bc:addZone(buddiesSea)
bc:addZone(maykop)
bc:addZone(alpha)
bc:addZone(deltaSea)
bc:addZone(gudautaSea)

bc:addConnection("Anapa","Bravo")
bc:addConnection("Bravo","Krymsk")
bc:addConnection("Krymsk","Echo")
bc:addConnection("Echo","KrasnodarCenter")
bc:addConnection("KrasnodarCenter","Krasnodar")
bc:addConnection("Anapa","Novorossiysk")
bc:addConnection("Bravo","Novorossiysk")
bc:addConnection("Novorossiysk","Gelendzhik")
bc:addConnection("Gelendzhik","Charlie")
bc:addConnection("Charlie","Delta")
bc:addConnection("Delta","Sochi")
bc:addConnection("Sochi","Gudauta")
bc:addConnection("Gudauta","Sukhumi")
bc:addConnection("Sukhumi","India")
bc:addConnection("India","Senaki")
bc:addConnection("Senaki","Kobuleti")
bc:addConnection("Kobuleti","Batumi")
bc:addConnection("Batumi","BUDDIESSea")
bc:addConnection("Kobuleti","Kutaisi")
bc:addConnection("Senaki","Kutaisi")
bc:addConnection("Kutaisi","Juliet")
bc:addConnection("Juliet","Kilo")
bc:addConnection("Kilo","Tbilisi")
bc:addConnection("Tbilisi","Beslan")
bc:addConnection("Beslan","Mozdok")
bc:addConnection("Beslan","Nalchik")
bc:addConnection("Mozdok","Nalchik")
bc:addConnection("Nalchik","Hotel")
bc:addConnection("Nalchik","Lima")
bc:addConnection("Hotel","Mineralnye")
bc:addConnection("Mineralnye","Golf")
bc:addConnection("Lima","Mike")
bc:addConnection("Golf","Foxtrot")
bc:addConnection("Mike","Foxtrot")
bc:addConnection("Mike","Sochi")
bc:addConnection("Foxtrot","Maykop")
bc:addConnection("Maykop","Alpha")
bc:addConnection("Alpha","Krasnodar")
bc:addConnection("Novorossiysk","ObeliskSea")
bc:addConnection("ObeliskSea","Anapa")
bc:addConnection("Sukhumi","GudautaSea")
bc:addConnection("GudautaSea","Gudauta")
bc:addConnection("Delta","DeltaSea")
bc:addConnection("DeltaSea","Charlie")
bc:addConnection("Kilo","Beslan")

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
bc:addShopItem(2, 'sweep', -1)
bc:addShopItem(2, 'cas', -1)
bc:addShopItem(2, 'cruisemsl', 12)
bc:addShopItem(2, 'supplies', -1)
bc:addShopItem(2, 'jtac', -1)
bc:addShopItem(2, 'smoke', -1)
bc:addShopItem(2, 'awacs', -1)

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

Group.getByName('redcap1'):destroy()
bc:registerShopItem('redcap1', 'Red Cap', 1000, function(sender) 
	local gr = Group.getByName('redcap1')
	if gr and gr:getSize()>0 and gr:getController():hasTask() then 
		return 'still alive'
	end
	mist.respawnGroup('redcap1', true)
	trigger.action.outTextForCoalition(2,'Enemy MiG-31 interceptors, coming in from the South-East',15)
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

bc:addShopItem(1, 'redcas1', -1)
bc:addShopItem(1, 'redcap1', -1)
bc:addShopItem(1, 'redsead1', -1)
bc:addShopItem(1, 'intercept1', -1)
bc:addShopItem(1, 'escort1', -1)

budgetAI = BudgetCommander:new({ battleCommander = bc, side=1, decissionFrequency=20*60, decissionVariance=10*60, skipChance = 10})
budgetAI:init()
--end red support

lc = LogisticCommander:new({battleCommander = bc, supplyZones = {'Krasnodar', 'KrasnodarCenter', 'Krymsk', 'Bravo', 'Echo', 'Novorossiysk', 'Gelendzhik', 'Charlie', 'Delta', 'Sochi', 'Gudauta', 'Sukhumi', 'Kobuleti', 'Batumi', 'Kutaisi', 'Juliet', 'Kilo', 'Tbilisi', 'Beslan', 'Mozdok', 'Nalchik', 'Hotel', 'Mineralnye', 'Lima', 'Golf', 'Mike', 'Foxtrot', 'Alpha', 'Maykop'}})
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