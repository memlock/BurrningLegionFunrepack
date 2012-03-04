--[[ Borean Tundra -- Nerubar Venomspitter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarVenomspitter_VenomSpit", 8000, 0)
end

function NerubarVenomspitter_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24563, 1, "NerubarVenomspitter_OnCombat")
RegisterUnitEvent(24563, 2, "NerubarVenomspitter_OnLeaveCombat")
RegisterUnitEvent(24563, 3, "NerubarVenomspitter_OnKilledTarget")
RegisterUnitEvent(24563, 4, "NerubarVenomspitter_OnDied")