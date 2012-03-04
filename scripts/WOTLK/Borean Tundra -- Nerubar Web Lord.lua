--[[ Borean Tundra -- Nerubar Web Lord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarWebLord_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarWebLord_BlindingSwarm", 8000, 0)
end

function NerubarWebLord_BlindingSwarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50284, pUnit:GetMainTank()) 
end

function NerubarWebLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarWebLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarWebLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25294, 1, "NerubarWebLord_OnCombat")
RegisterUnitEvent(25294, 2, "NerubarWebLord_OnLeaveCombat")
RegisterUnitEvent(25294, 3, "NerubarWebLord_OnKilledTarget")
RegisterUnitEvent(25294, 4, "NerubarWebLord_OnDied")