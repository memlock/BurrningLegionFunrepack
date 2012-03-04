--[[ Netherstorm -- Commander Dawnforge.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Commander_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Commander_Cleave",1000,0)
    pUnit:RegisterEvent("Commander_Spellbreaker",1000,0)
end

function Commander_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35473,pUnit:GetClosestPlayer())
end

function Commander_Spellbreaker(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function Commander_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Commander_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19831, 1, "Commander_OnEnterCombat")
RegisterUnitEvent (19831, 2, "Commander_OnLeaveCombat")
RegisterUnitEvent (19831, 4, "Commander_OnDied")