--[[ The Barrens -- Witchwing Harpy.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingHarpy_CurseofMending", 4000, 1)
end

function WitchwingHarpy_CurseofMending(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7098, pUnit:GetMainTank()) 
end

function WitchwingHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3276, 1, "WitchwingHarpy_OnCombat")
RegisterUnitEvent(3276, 2, "WitchwingHarpy_OnLeaveCombat")
RegisterUnitEvent(3276, 3, "WitchwingHarpy_OnKilledTarget")
RegisterUnitEvent(3276, 4, "WitchwingHarpy_OnDied")