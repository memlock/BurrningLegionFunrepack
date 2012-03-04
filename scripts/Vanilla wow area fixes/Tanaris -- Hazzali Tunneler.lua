--[[ Tanaris -- Hazzali Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliTunneler_PierceArmor", 10000, 0)
end

function HazzaliTunneler_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function HazzaliTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5453, 1, "HazzaliTunneler_OnCombat")
RegisterUnitEvent(5453, 2, "HazzaliTunneler_OnLeaveCombat")
RegisterUnitEvent(5453, 3, "HazzaliTunneler_OnKilledTarget")
RegisterUnitEvent(5453, 4, "HazzaliTunneler_OnDied")