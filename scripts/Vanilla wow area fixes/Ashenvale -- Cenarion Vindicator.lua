--[[ Ashenvale -- Cenarion Vindicator.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function CenarionVindicator_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionVindicator_Moonfire", 7000, 0)
end

function CenarionVindicator_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function CenarionVindicator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionVindicator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionVindicator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3833, 1, "CenarionVindicator_OnCombat")
RegisterUnitEvent(3833, 2, "CenarionVindicator_OnLeaveCombat")
RegisterUnitEvent(3833, 3, "CenarionVindicator_OnKilledTarget")
RegisterUnitEvent(3833, 4, "CenarionVindicator_OnDied")