--[[ Winterspring -- Anguished Highborne.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 18th, 2008. ]]

function Highborne_OnCombat(Unit, Event)
Unit:RegisterEvent("Highborne_Blast", 6000, 0)
end

function Highborne_Blast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13860, pUnit:GetMainTank()) 
end

function Highborne_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Highborne_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Highborne_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7524, 1, "Highborne_OnCombat")
RegisterUnitEvent(7524, 2, "Highborne_OnLeaveCombat")
RegisterUnitEvent(7524, 3, "Highborne_OnKilledTarget")
RegisterUnitEvent(7524, 4, "Highborne_OnDied")