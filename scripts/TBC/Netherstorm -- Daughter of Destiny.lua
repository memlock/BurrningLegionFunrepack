--[[ Netherstorm -- Daughter of Destiny.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Daughter_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Daughter_Nova",2000,0)
end

function Daughter_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36225, pUnit:GetClosestPlayer())
end

function Daughter_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Daughter_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18860, 1, "Daughter_OnEnterCombat")
RegisterUnitEvent (18860, 2, "Daughter_OnLeaveCombat")
RegisterUnitEvent (18860, 4, "Daughter_OnDied")
