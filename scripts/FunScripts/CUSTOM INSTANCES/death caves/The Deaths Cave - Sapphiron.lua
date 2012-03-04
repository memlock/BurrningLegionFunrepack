function Sapphiron_Nether_Burn(Unit, event, miscunit, misc)
	print "Sapphiron Nether Burn"
	Unit:FullCastSpellOnTarget(30523,Unit:GetClosestPlayer())
	Unit:SendChatMessage(11, 0, "Hello adventures ... Time to Die!")
end

function Sapphiron_Vode_Zone(Unit, event, miscunit, misc)
	print "Sapphiron Vode Zone"
	Unit:FullCastSpellOnTarget(30533,Unit:GetRandomPlayer())
	Unit:SendChatMessage(11, 0, "I may look frost ... but I have a lot of fire in me!")
end

function Sapphiron_Banish_Phase(Unit, event, miscunit, misc)
	print "Sapphiron Banish Phase"
	Unit:SendAreaTriggerMessage("BANISH PHASE")
	Unit:FullCastSpell(35182)
	Unit:FullCastSpellOnTarget(38524,Unit:GetClosestPlayer())
end

function Sapphiron_Enrage(Unit, event, miscunit, misc)
	print "Sapphiron Enrage"
	Unit:FullCastSpell(35595)
	Unit:SendChatMessage(11, 0, "You will all die...")
end

function Sapphiron(unit, event, miscunit, misc)
	print "Sapphiron"
	unit:RegisterEvent("Sapphiron_Portal_PhaseA",1000,1)
	unit:RegisterEvent("Sapphiron_Nether_Burn",10000,0)
	unit:RegisterEvent("Sapphiron_Vode_Zone",20000,0)
	unit:RegisterEvent("Sapphiron_Banish_Phase",30000,0)
	unit:RegisterEvent("Sapphiron_Portal_PhaseB",60000,0)
	unit:RegisterEvent("Sapphiron_Enrage",540000,0)
end

RegisterUnitEvent(15989,1,"Sapphiron")