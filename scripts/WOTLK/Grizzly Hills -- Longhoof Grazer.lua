--[[ Grizzly Hills -- Longhoof Grazer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function LonghoofGrazer_OnCombat(Unit, Event)
Unit:RegisterEvent("LonghoofGrazer_HeadButt", 8000, 0)
end

function LonghoofGrazer_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(42320, pUnit:GetMainTank()) 
end

function LonghoofGrazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LonghoofGrazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LonghoofGrazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26418, 1, "LonghoofGrazer_OnCombat")
RegisterUnitEvent(26418, 2, "LonghoofGrazer_OnLeaveCombat")
RegisterUnitEvent(26418, 3, "LonghoofGrazer_OnKilledTarget")
RegisterUnitEvent(26418, 4, "LonghoofGrazer_OnDied")