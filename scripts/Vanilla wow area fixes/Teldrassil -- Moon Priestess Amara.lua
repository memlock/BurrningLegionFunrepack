--[[ Teldrassil -- Moon Priestess Amara.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function MoonPriestessAmara_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonPriestessAmara_Shoot", 6000, 0)
end

function MoonPriestessAmara_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18561, pUnit:GetMainTank()) 
end

function MoonPriestessAmara_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonPriestessAmara_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonPriestessAmara_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2151, 1, "MoonPriestessAmara_OnCombat")
RegisterUnitEvent(2151, 2, "MoonPriestessAmara_OnLeaveCombat")
RegisterUnitEvent(2151, 3, "MoonPriestessAmara_OnKilledTarget")
RegisterUnitEvent(2151, 4, "MoonPriestessAmara_OnDied")