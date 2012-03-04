--[[ Netherstorm -- Pentatharon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Pentatharon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Pentatharon_Swarm",4000,0)
end

function Pentatharon_Swarm(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36039,pUnit:ClosestPlayer())
end   
    
function Pentatharon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Pentatharon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20215, 1, "Pentatharon_OnEnterCombat")
RegisterUnitEvent (20215, 2, "Pentatharon_OnLeaveCombat")
RegisterUnitEvent (20215, 4, "Pentatharon_OnDied")