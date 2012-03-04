--[[ Thousand Needles -- Scalding Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScaldingElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("ScaldingElemental_Scald", 10000, 0)
end

function ScaldingElemental_Scald(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17276, pUnit:GetMainTank()) 
end

function ScaldingElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScaldingElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScaldingElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10756, 1, "ScaldingElemental_OnCombat")
RegisterUnitEvent(10756, 2, "ScaldingElemental_OnLeaveCombat")
RegisterUnitEvent(10756, 3, "ScaldingElemental_OnKilledTarget")
RegisterUnitEvent(10756, 4, "ScaldingElemental_OnDied")