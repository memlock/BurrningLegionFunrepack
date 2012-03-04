--[[ Bloodmyst Isle -- Corrupted Stomper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function CorruptedStomper_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedStomper_Stomp", 8000, 0)
end

function CorruptedStomper_Stomp(pUnit, Event) 
pUnit:CastSpell(31277) 
end

function CorruptedStomper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedStomper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedStomper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17353, 1, "CorruptedStomper_OnCombat")
RegisterUnitEvent(17353, 2, "CorruptedStomper_OnLeaveCombat")
RegisterUnitEvent(17353, 3, "CorruptedStomper_OnKilledTarget")
RegisterUnitEvent(17353, 4, "CorruptedStomper_OnDied")