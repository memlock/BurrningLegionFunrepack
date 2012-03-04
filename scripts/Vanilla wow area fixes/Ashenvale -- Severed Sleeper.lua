--[[ Ashenvale -- Severed Sleeper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SeveredSleeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredSleeper_Sleep", 12000, 1)
end

function SeveredSleeper_Sleep(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8399, pUnit:GetMainTank()) 
end

function SeveredSleeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredSleeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredSleeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3801, 1, "SeveredSleeper_OnCombat")
RegisterUnitEvent(3801, 2, "SeveredSleeper_OnLeaveCombat")
RegisterUnitEvent(3801, 3, "SeveredSleeper_OnKilledTarget")
RegisterUnitEvent(3801, 4, "SeveredSleeper_OnDied")