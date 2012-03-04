--[[ Borean Tundra -- Scourged Flamespitter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScourgedFlamespitter_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedFlamespitter_Incinerate", 7000, 0)
end

function ScourgedFlamespitter_Incinerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32707, pUnit:GetMainTank()) 
end

function ScourgedFlamespitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedFlamespitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedFlamespitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25582, 1, "ScourgedFlamespitter_OnCombat")
RegisterUnitEvent(25582, 2, "ScourgedFlamespitter_OnLeaveCombat")
RegisterUnitEvent(25582, 3, "ScourgedFlamespitter_OnKilledTarget")
RegisterUnitEvent(25582, 4, "ScourgedFlamespitter_OnDied")