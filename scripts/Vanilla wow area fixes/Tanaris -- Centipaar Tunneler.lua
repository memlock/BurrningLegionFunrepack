--[[ Tanaris -- Centipaar Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarTunneler_PierceArmor", 15000, 0)
Unit:RegisterEvent("CentipaarTunneler_Thrash", 6000, 0)
end

function CentipaarTunneler_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function CentipaarTunneler_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5459, 1, "CentipaarTunneler_OnCombat")
RegisterUnitEvent(5459, 2, "CentipaarTunneler_OnLeaveCombat")
RegisterUnitEvent(5459, 3, "CentipaarTunneler_OnKilledTarget")
RegisterUnitEvent(5459, 4, "CentipaarTunneler_OnDied")