--[[ Teldrassil -- Timberling Mire Beast.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function TimberlingMireBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberlingMireBeast_MiringMud", 8000, 0)
end

function TimberlingMireBeast_MiringMud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5567, pUnit:GetMainTank()) 
end

function TimberlingMireBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberlingMireBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberlingMireBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2029, 1, "TimberlingMireBeast_OnCombat")
RegisterUnitEvent(2029, 2, "TimberlingMireBeast_OnLeaveCombat")
RegisterUnitEvent(2029, 3, "TimberlingMireBeast_OnKilledTarget")
RegisterUnitEvent(2029, 4, "TimberlingMireBeast_OnDied")