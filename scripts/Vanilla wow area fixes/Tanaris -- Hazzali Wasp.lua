--[[ Tanaris -- Hazzali Wasp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliWasp_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliWasp_Poison", 10000, 0)
end

function HazzaliWasp_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HazzaliWasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliWasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliWasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5453, 1, "HazzaliWasp_OnCombat")
RegisterUnitEvent(5453, 2, "HazzaliWasp_OnLeaveCombat")
RegisterUnitEvent(5453, 3, "HazzaliWasp_OnKilledTarget")
RegisterUnitEvent(5453, 4, "HazzaliWasp_OnDied")