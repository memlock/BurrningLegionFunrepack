--[[ Teldrassil -- Duskstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Duskstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Duskstalker_TendonRip", 8000, 0)
end

function Duskstalker_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function Duskstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Duskstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Duskstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14430, 1, "Duskstalker_OnCombat")
RegisterUnitEvent(14430, 2, "Duskstalker_OnLeaveCombat")
RegisterUnitEvent(14430, 3, "Duskstalker_OnKilledTarget")
RegisterUnitEvent(14430, 4, "Duskstalker_OnDied")