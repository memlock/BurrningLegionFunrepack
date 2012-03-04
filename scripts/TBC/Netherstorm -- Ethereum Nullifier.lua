--[[ Netherstorm -- Ethereum Nullifier.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Nullifier_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Nullifier_Presence",1000,0)
end

function Nullifier_Presence(pUnit,Event)
    pUnit:CastSpell(36513)
end

function Nullifier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Nullifier_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22822, 1, "Nullifier_OnEnterCombat")
RegisterUnitEvent (22822, 2, "Nullifier_OnEnterCombat")
RegisterUnitEvent (22822, 4, "Nullifier_OnEnterCombat")