--[[ Durotar -- Death Flayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DeathFlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathFlayer_VenomSting", 8000, 0)
end

function DeathFlayer_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function DeathFlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathFlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathFlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5823, 1, "DeathFlayer_OnCombat")
RegisterUnitEvent(5823, 2, "DeathFlayer_OnLeaveCombat")
RegisterUnitEvent(5823, 3, "DeathFlayer_OnKilledTarget")
RegisterUnitEvent(5823, 4, "DeathFlayer_OnDied")