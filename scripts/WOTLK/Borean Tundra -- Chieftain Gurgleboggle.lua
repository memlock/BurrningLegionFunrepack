--[[ Borean Tundra -- Chieftain Gurgleboggle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ChieftainGurgleboggle_OnCombat(Unit, Event)
Unit:RegisterEvent("ChieftainGurgleboggle_FlipAttack", 8000, 0)
end

function ChieftainGurgleboggle_FlipAttack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50533, pUnit:GetMainTank()) 
end

function ChieftainGurgleboggle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChieftainGurgleboggle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChieftainGurgleboggle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25725, 1, "ChieftainGurgleboggle_OnCombat")
RegisterUnitEvent(25725, 2, "ChieftainGurgleboggle_OnLeaveCombat")
RegisterUnitEvent(25725, 3, "ChieftainGurgleboggle_OnKilledTarget")
RegisterUnitEvent(25725, 4, "ChieftainGurgleboggle_OnDied")