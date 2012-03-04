--[[ Azshara -- Spitelash Screamer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SpitelashScreamer_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashScreamer_DeafeningScreech", 12000, 0)
end

function SpitelashScreamer_DeafeningScreech(pUnit, Event) 
pUnit:CastSpell(3589) 
end

function SpitelashScreamer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashScreamer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashScreamer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6193, 1, "SpitelashScreamer_OnCombat")
RegisterUnitEvent(6193, 2, "SpitelashScreamer_OnLeaveCombat")
RegisterUnitEvent(6193, 3, "SpitelashScreamer_OnKilledTarget")
RegisterUnitEvent(6193, 4, "SpitelashScreamer_OnDied")