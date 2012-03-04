--[[ Azuremyst Isle -- Aberrant Owlbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function AberrantOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AberrantOwlbeast_Moonfire", 6000, 0)
end

function AberrantOwlbeast_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31270, pUnit:GetRandomPlayer(0)) 
end

function AberrantOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AberrantOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AberrantOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17187, 1, "AberrantOwlbeast_OnCombat")
RegisterUnitEvent(17187, 2, "AberrantOwlbeast_OnLeaveCombat")
RegisterUnitEvent(17187, 3, "AberrantOwlbeast_OnKilledTarget")
RegisterUnitEvent(17187, 4, "AberrantOwlbeast_OnDied")