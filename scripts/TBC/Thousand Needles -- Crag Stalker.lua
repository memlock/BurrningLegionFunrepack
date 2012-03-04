--[[ Thousand Needles -- Crag Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function CragStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("CragStalker_SurpriseAttack", 8000, 0)
end

function CragStalker_SurpriseAttack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8151, pUnit:GetMainTank()) 
end

function CragStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CragStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CragStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4126, 1, "CragStalker_OnCombat")
RegisterUnitEvent(4126, 2, "CragStalker_OnLeaveCombat")
RegisterUnitEvent(4126, 3, "CragStalker_OnKilledTarget")
RegisterUnitEvent(4126, 4, "CragStalker_OnDied")