--[[ The Barrens -- Lok Orcbane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function LokOrcbane_OnCombat(Unit, Event)
Unit:RegisterEvent("LokOrcbane_Hamstring", 8000, 0)
end

function LokOrcbane_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function LokOrcbane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LokOrcbane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LokOrcbane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3435, 1, "LokOrcbane_OnCombat")
RegisterUnitEvent(3435, 2, "LokOrcbane_OnLeaveCombat")
RegisterUnitEvent(3435, 3, "LokOrcbane_OnKilledTarget")
RegisterUnitEvent(3435, 4, "LokOrcbane_OnDied")