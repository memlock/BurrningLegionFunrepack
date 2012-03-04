-- Vexallus-Adds.lua
function Add_Death(pUnit,Event)
	pUnit:FullCastSpellOnTarget(44335,pUnit:GetClosestPlayer())
end

function Add_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(44342,pUnit:GetRandomPlayer())
end

RegisterUnitEvent(24745, 1, "Add_Spell")
RegisterUnitEvent(24745, 4, "AddDeath")