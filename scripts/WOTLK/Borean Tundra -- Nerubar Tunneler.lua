--[[ Borean Tundra -- Nerubar Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarTunneler_RockShield", 8000, 0)
end

function NerubarTunneler_RockShield(pUnit, Event) 
pUnit:CastSpell(50364) 
end

function NerubarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25622, 1, "NerubarTunneler_OnCombat")
RegisterUnitEvent(25622, 2, "NerubarTunneler_OnLeaveCombat")
RegisterUnitEvent(25622, 3, "NerubarTunneler_OnKilledTarget")
RegisterUnitEvent(25622, 4, "NerubarTunneler_OnDied")