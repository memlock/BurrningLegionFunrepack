--[[ Tanaris -- Hazzali Stinger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliStinger_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliStinger_VenomSting", 10000, 0)
end

function HazzaliStinger_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function HazzaliStinger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliStinger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliStinger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5450, 1, "HazzaliStinger_OnCombat")
RegisterUnitEvent(5450, 2, "HazzaliStinger_OnLeaveCombat")
RegisterUnitEvent(5450, 3, "HazzaliStinger_OnKilledTarget")
RegisterUnitEvent(5450, 4, "HazzaliStinger_OnDied")