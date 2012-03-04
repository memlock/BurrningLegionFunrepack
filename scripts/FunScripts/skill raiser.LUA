local NPC_ID = 55010;

local t = {
	{"1H Swords",1,	43},
	{"1H Axes",2,44},
	{"1H Maces",3,54},
	{"2H Swords",4,55},
	{"2H Axes",5,172},
	{"2H Maces",6,160},
	{"Daggers",7,173},
	{"Fist Weapons",8,473},
	{"Unarmed",9,162},
	{"Staves",10,136},
	{"Polearms",11,229},
	{"Bows",12,45},
	{"Crossbows",13,226},
	{"Guns",14,46},
	{"Thrown",15,176},
	{"Wands",16,228},
	{"Defence",17,95}
};

function MaxSkillNPC_OnGossip(unit, event, plr)
	unit:GossipCreateMenu(50, plr, 0)
	for k, v in pairs(t) do
		unit:GossipMenuAddItem(0, v[1], v[2], 0)
	end
	unit:GossipMenuAddItem(1, "Never mind", 100, 0)
	unit:GossipSendMenu(plr)
end

function MaxSkillNPC_OnSelect(unit, event, plr, id, intid, code)
	if (intid > 0) and (intid < 100) then
		plr:AddSkill(t[intid][3], 400, 400)
		plr:SendBroadcastMessage("|cffff0000You have now maxed out your "..t[intid][1].." skills!")
	else  -- Doing this for the Never Mind option
	end
	plr:GossipComplete()
end

RegisterUnitGossipEvent(208266, 1, "MaxSkillNPC_OnGossip")
RegisterUnitGossipEvent(208266, 2, "MaxSkillNPC_OnSelect")

-- By astrianin, of AC-Web