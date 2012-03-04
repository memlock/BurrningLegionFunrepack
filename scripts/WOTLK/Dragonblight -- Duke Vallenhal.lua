--[[ Dragonblight -- Duke Vallenhal.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DukeVallenhal_OnCombat(Unit, Event)
Unit:RegisterEvent("DukeVallenhal_BloodPresence", 1000, 1)
Unit:RegisterEvent("DukeVallenhal_Bloodworm", 4000, 1)
end

function DukeVallenhal_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function DukeVallenhal_Bloodworm(pUnit, Event) 
pUnit:CastSpell(51879) 
end

function DukeVallenhal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DukeVallenhal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DukeVallenhal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26926, 1, "DukeVallenhal_OnCombat")
RegisterUnitEvent(26926, 2, "DukeVallenhal_OnLeaveCombat")
RegisterUnitEvent(26926, 3, "DukeVallenhal_OnKilledTarget")
RegisterUnitEvent(26926, 4, "DukeVallenhal_OnDied")