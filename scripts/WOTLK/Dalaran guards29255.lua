function Horde_OnEnterCombat(pUnit, Event)
	pUnit:RegisterEvent("Horde_Knock",1000,0)
end

function Horde_Knock(pUnit, Event)
	pUnit:FullCastSpellOnTarget(54108,pUnit:GetMainTank())
        pUnit:Root()
end 

function Horde_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function Horde_OnDied(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(29255, 1, "Horde_OnEnterCombat")
RegisterUnitEvent(29255, 2, "Horde_OnLeaveCombat")
RegisterUnitEvent(29255, 4, "Horde_OnDied")
