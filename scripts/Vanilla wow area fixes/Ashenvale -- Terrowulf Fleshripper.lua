--[[ Ashenvale -- Terrowulf Fleshripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TerrowulfFleshripper_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfFleshripper_TendonRip", 8000, 0)
end

function TerrowulfFleshripper_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function TerrowulfFleshripper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfFleshripper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfFleshripper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3789, 1, "TerrowulfFleshripper_OnCombat")
RegisterUnitEvent(3789, 2, "TerrowulfFleshripper_OnLeaveCombat")
RegisterUnitEvent(3789, 3, "TerrowulfFleshripper_OnKilledTarget")
RegisterUnitEvent(3789, 4, "TerrowulfFleshripper_OnDied")