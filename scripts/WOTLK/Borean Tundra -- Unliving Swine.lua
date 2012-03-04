--[[ Borean Tundra -- Unliving Swine.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnlivingSwine_OnCombat(Unit, Event)
Unit:RegisterEvent("UnlivingSwine_SwineFlu", 8000, 0)
end

function UnlivingSwine_SwineFlu(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50303, pUnit:GetMainTank()) 
end

function UnlivingSwine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnlivingSwine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnlivingSwine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25600, 1, "UnlivingSwine_OnCombat")
RegisterUnitEvent(25600, 2, "UnlivingSwine_OnLeaveCombat")
RegisterUnitEvent(25600, 3, "UnlivingSwine_OnKilledTarget")
RegisterUnitEvent(25600, 4, "UnlivingSwine_OnDied")