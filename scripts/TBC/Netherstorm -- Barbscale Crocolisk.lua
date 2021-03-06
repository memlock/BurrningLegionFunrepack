--[[ Netherstorm -- Barbscale Crocolisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Crocolisk_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Crocolisk_Rip",1000,0)
end

function Crocolisk_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(3604, pUnit:GetClosestPlayer())
end

function Crocolisk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Crocolisk_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20773, 1, "Crocolisk_OnEnterCombat")
RegisterUnitEvent (20773, 2, "Crocolisk_OnLeaveCombat")
RegisterUnitEvent (20773, 4, "Crocolisk_OnDied")