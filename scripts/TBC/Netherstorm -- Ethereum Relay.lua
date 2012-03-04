--[[ Netherstorm -- Ethereum Relay.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Relay_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Relay_Shadowform",1000,0)
end

function Relay_Shadowform(pUnit,Event)
    pUnit:CastSpell(16592)
end

function Relay_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Relay_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20619, 1, "Relay_OnEnterCombat")
RegisterUnitEvent (20619, 2, "Relay_OnLeaveCombat")
RegisterUnitEvent (20619, 4, "Relay_OnDied")