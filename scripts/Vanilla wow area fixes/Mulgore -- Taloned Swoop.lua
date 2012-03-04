--[[ Mulgore -- Taloned Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function TalonedSwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("TalonedSwoop_Swoop", 6000, 0)
end

function TalonedSwoop_TalonedSwoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function TalonedSwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TalonedSwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TalonedSwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2971, 1, "TalonedSwoop_OnCombat")
RegisterUnitEvent(2971, 2, "TalonedSwoop_OnLeaveCombat")
RegisterUnitEvent(2971, 3, "TalonedSwoop_OnKilledTarget")
RegisterUnitEvent(2971, 4, "TalonedSwoop_OnDied")