--[[ Azshara -- Magister Hawkhelm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MagisterHawkhelm_OnCombat(Unit, Event)
Unit:RegisterEvent("MagisterHawkhelm_Shoot", 6000, 0)
end

function MagisterHawkhelm_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function MagisterHawkhelm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagisterHawkhelm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagisterHawkhelm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6647, 1, "MagisterHawkhelm_OnCombat")
RegisterUnitEvent(6647, 2, "MagisterHawkhelm_OnLeaveCombat")
RegisterUnitEvent(6647, 3, "MagisterHawkhelm_OnKilledTarget")
RegisterUnitEvent(6647, 4, "MagisterHawkhelm_OnDied")