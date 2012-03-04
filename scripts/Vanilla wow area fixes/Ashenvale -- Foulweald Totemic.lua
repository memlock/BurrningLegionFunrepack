--[[ Ashenvale -- Foulweald Totemic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdTotemic_SearingTotem", 2000, 1)
end

function FoulwealdTotemic_SearingTotem(pUnit, Event) 
pUnit:CastSpell(6363) 
end

function FoulwealdTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3750, 1, "FoulwealdTotemic_OnCombat")
RegisterUnitEvent(3750, 2, "FoulwealdTotemic_OnLeaveCombat")
RegisterUnitEvent(3750, 3, "FoulwealdTotemic_OnKilledTarget")
RegisterUnitEvent(3750, 4, "FoulwealdTotemic_OnDied")