--[[ Netherstorm -- Apex.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Apex_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Apex_Thunderclap",1000,0)
end

function Apex_Thunderclap(pUnit,Event)
    pUnit:FullCastSpellOnTraget(8078, pUnit:GetClosestPlayer())
end

function Apex_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Apex_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19940, 1, "Apex_OnEnterCombat")
RegisterUnitEvent (19940, 2, "Apex_OnLeaveCombat")
RegisterUnitEvent (19940, 4, "Apex_OnDied")

