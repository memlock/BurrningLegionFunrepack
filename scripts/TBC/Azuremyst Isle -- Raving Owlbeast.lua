--[[ Azuremyst Isle -- Raving Owlbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function RavingOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("RavingOwlbeast_Enrage", 10000, 0)
end

function RavingOwlbeast_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function RavingOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RavingOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RavingOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17188, 1, "RavingOwlbeast_OnCombat")
RegisterUnitEvent(17188, 2, "RavingOwlbeast_OnLeaveCombat")
RegisterUnitEvent(17188, 3, "RavingOwlbeast_OnKilledTarget")
RegisterUnitEvent(17188, 4, "RavingOwlbeast_OnDied")