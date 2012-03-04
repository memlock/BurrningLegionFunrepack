--[[ Bloodmyst Isle -- Axxarien Trickster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function AxxarienTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienTrickster_Eviscerate", 10000, 0)
end

function AxxarienTrickster_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function AxxarienTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17341, 1, "AxxarienTrickster_OnCombat")
RegisterUnitEvent(17341, 2, "AxxarienTrickster_OnLeaveCombat")
RegisterUnitEvent(17341, 3, "AxxarienTrickster_OnKilledTarget")
RegisterUnitEvent(17341, 4, "AxxarienTrickster_OnDied")