--[[ Borean Tundra -- Cult Plaguebringer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CultPlaguebringer_OnCombat(Unit, Event)
Unit:RegisterEvent("CultPlaguebringer_InjectPlague", 8000, 0)
end

function CultPlaguebringer_InjectPlague(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50356, pUnit:GetMainTank()) 
end

function CultPlaguebringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CultPlaguebringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CultPlaguebringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24957, 1, "CultPlaguebringer_OnCombat")
RegisterUnitEvent(24957, 2, "CultPlaguebringer_OnLeaveCombat")
RegisterUnitEvent(24957, 3, "CultPlaguebringer_OnKilledTarget")
RegisterUnitEvent(24957, 4, "CultPlaguebringer_OnDied")