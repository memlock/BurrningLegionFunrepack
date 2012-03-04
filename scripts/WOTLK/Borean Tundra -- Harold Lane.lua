--[[ Borean Tundra -- Harold Lane.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HaroldLane_OnCombat(Unit, Event)
Unit:RegisterEvent("HaroldLane_BearTrap", 2000, 1)
Unit:RegisterEvent("HaroldLane_ThrowBearPelt", 8000, 0)
end

function HaroldLane_BearTrap(pUnit, Event) 
pUnit:CastSpell(53432) 
end

function HaroldLane_ThrowBearPelt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53425, pUnit:GetMainTank()) 
end

function HaroldLane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaroldLane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaroldLane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25804, 1, "HaroldLane_OnCombat")
RegisterUnitEvent(25804, 2, "HaroldLane_OnLeaveCombat")
RegisterUnitEvent(25804, 3, "HaroldLane_OnKilledTarget")
RegisterUnitEvent(25804, 4, "HaroldLane_OnDied")