--[[ Netherstorm -- Ethereum Jailor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Jailor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Jailor_Presence",1000,0)
end

function Jailor_Presence(pUnit,Event)
    pUnit:CastSpell(36513)
end

function Jailor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Jailor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23008, 1, "Jailor_OnEnterCombat")
RegisterUnitEvent (23008, 2, "Jailor_OnEnterCombat")
RegisterUnitEvent (23008, 4, "Jailor_OnEnterCombat")