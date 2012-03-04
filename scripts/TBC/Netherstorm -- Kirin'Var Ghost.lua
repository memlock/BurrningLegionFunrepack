--[[ Netherstorm -- Kirin'Var Ghost.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Ghost_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ghost_Soulbind",2000,0)
end

function Ghost_Soulbind(pUnit,Event)
    pUnit:CastSpell(36153)
end

function Ghost_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ghost_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20409, 1, "Ghost_OnEnterCombat")
RegisterUnitEvent (20409, 2, "Ghost_OnLeaveCombat")
RegisterUnitEvent (20409, 4, "Ghost_OnDied")