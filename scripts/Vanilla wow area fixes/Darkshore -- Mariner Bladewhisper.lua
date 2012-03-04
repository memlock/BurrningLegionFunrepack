--[[ Darkshore -- Mariner Bladewhisper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerBladewhisper_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerBladewhisper_Net", 10000, 0)
end

function MarinerBladewhisper_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerBladewhisper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerBladewhisper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerBladewhisper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24996, 1, "MarinerBladewhisper_OnCombat")
RegisterUnitEvent(24996, 2, "MarinerBladewhisper_OnLeaveCombat")
RegisterUnitEvent(24996, 3, "MarinerBladewhisper_OnKilledTarget")
RegisterUnitEvent(24996, 4, "MarinerBladewhisper_OnDied")