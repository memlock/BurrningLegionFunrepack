--[[ Borean Tundra -- Scout Tungok.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScoutTungok_OnCombat(Unit, Event)
Unit:RegisterEvent("ScoutTungok_Enrage", 10000, 0)
end

function ScoutTungok_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function ScoutTungok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScoutTungok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScoutTungok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25440, 1, "ScoutTungok_OnCombat")
RegisterUnitEvent(25440, 2, "ScoutTungok_OnLeaveCombat")
RegisterUnitEvent(25440, 3, "ScoutTungok_OnKilledTarget")
RegisterUnitEvent(25440, 4, "ScoutTungok_OnDied")