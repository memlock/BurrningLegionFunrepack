--[[ Borean Tundra -- Beryl Treasure Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BerylTreasureHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("BerylTreasureHunter_FocusBeam", 8000, 0)
end

function BerylTreasureHunter_FocusBeam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50658, pUnit:GetMainTank()) 
end

function BerylTreasureHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerylTreasureHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerylTreasureHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25353, 1, "BerylTreasureHunter_OnCombat")
RegisterUnitEvent(25353, 2, "BerylTreasureHunter_OnLeaveCombat")
RegisterUnitEvent(25353, 3, "BerylTreasureHunter_OnKilledTarget")
RegisterUnitEvent(25353, 4, "BerylTreasureHunter_OnDied")