--[[ Azshara -- Makrinni Snapclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MakrinniSnapclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MakrinniSnapclaw_TendonRip", 10000, 0)
end

function MakrinniSnapclaw_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function MakrinniSnapclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakrinniSnapclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakrinniSnapclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6372, 1, "MakrinniSnapclaw_OnCombat")
RegisterUnitEvent(6372, 2, "MakrinniSnapclaw_OnLeaveCombat")
RegisterUnitEvent(6372, 3, "MakrinniSnapclaw_OnKilledTarget")
RegisterUnitEvent(6372, 4, "MakrinniSnapclaw_OnDied")