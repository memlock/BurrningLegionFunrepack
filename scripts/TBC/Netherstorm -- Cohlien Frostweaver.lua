--[[ Netherstorm -- Cohlien Frostweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Frost_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Frost_Nova",8000,0)
    pUnit:RegisterEvent("Frost_Bolt",3000,0)
    pUnit:RegisterEvent("Frost_Barrier",30000,0)
end

function Frost_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11831,pUnit:GetClosestPlayer())
end

function Frost_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9672,pUnit:GetClosestPlayer())
end

function Frost_Barrier(pUnit,Event)
    pUnit:CastSpell(33245)
end

function Frost_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Frost_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19545, 1, "Frost_OnEnterCombat")
RegisterUnitEvent (19545, 2, "Frost_OnLeaveCombat")
RegisterUnitEvent (19545, 4, "Frost_OnDied")
