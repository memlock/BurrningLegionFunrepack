--[[ Borean Tundra -- Den Vermin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DenVermin_OnCombat(Unit, Event)
Unit:RegisterEvent("DenVermin_Thrash", 6000, 0)
end

function DenVermin_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function DenVermin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DenVermin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DenVermin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24567, 1, "DenVermin_OnCombat")
RegisterUnitEvent(24567, 2, "DenVermin_OnLeaveCombat")
RegisterUnitEvent(24567, 3, "DenVermin_OnKilledTarget")
RegisterUnitEvent(24567, 4, "DenVermin_OnDied")