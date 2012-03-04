--[[ Teldrassil -- Timberling Bark Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function TimberlingBarkRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberlingBarkRipper_PierceArmor", 8000, 0)
end

function TimberlingBarkRipper_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function TimberlingBarkRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberlingBarkRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberlingBarkRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2025, 1, "TimberlingBarkRipper_OnCombat")
RegisterUnitEvent(2025, 2, "TimberlingBarkRipper_OnLeaveCombat")
RegisterUnitEvent(2025, 3, "TimberlingBarkRipper_OnKilledTarget")
RegisterUnitEvent(2025, 4, "TimberlingBarkRipper_OnDied")