function Ally_OnEnterCombat(pUnit, Event)
	pUnit:RegisterEvent("Ally_Knock",1000,10)
end

function Ally_Knock(pUnit, Event)
	pUnit:FullCastSpellOnTarget(54620,pUnit:GetMainTank())
        pUnit:Root()
end 

function Ally_OnLeaveCombat(player, Event)
	player:RemoveEvents()	
end

function Ally_OnDied(player, Event)
	player:RemoveEvents()
end

RegisterUnitEvent(29254, 1, "Ally_OnEnterCombat")
RegisterUnitEvent(29254, 2, "Ally_OnLeaveCombat")
RegisterUnitEvent(29254, 4, "Ally_OnDied")
