--[[ The Barrens -- Baeldun Officer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunOfficer_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunOfficer_NimbleReflexes", 10000, 0)
Unit:RegisterEvent("BaeldunOfficer_Thrash", 5000, 0)
end

function BaeldunOfficer_NimbleReflexes(pUnit, Event) 
pUnit:CastSpell(6264) 
end

function BaeldunOfficer_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function BaeldunOfficer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunOfficer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunOfficer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3378, 1, "BaeldunOfficer_OnCombat")
RegisterUnitEvent(3378, 2, "BaeldunOfficer_OnLeaveCombat")
RegisterUnitEvent(3378, 3, "BaeldunOfficer_OnKilledTarget")
RegisterUnitEvent(3378, 4, "BaeldunOfficer_OnDied")