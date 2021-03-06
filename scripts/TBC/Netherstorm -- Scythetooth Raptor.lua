--[[ Netherstorm -- Scythetooth Raptor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Raptor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Raptor_Enrage",20000,0)
end

function Raptor_Enrage(pUnit,Event)
    pUnit:CastSpell(8599)
end   
    
function Raptor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Raptor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20634, 1, "Raptor_OnEnterCombat")
RegisterUnitEvent (20634, 2, "Raptor_OnLeaveCombat")
RegisterUnitEvent (20634, 4, "Raptor_OnDied")