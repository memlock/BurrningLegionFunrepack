--[[ Mulgore -- Bel'dun Appraiser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function BaeldunAppraiser_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunAppraiser_LesserHeal", 5000, 0)
end

function BaeldunAppraiser_LesserHeal(pUnit, Event) 
pUnit:CastSpell(2052) 
end

function BaeldunAppraiser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunAppraiser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunAppraiser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2990, 1, "BaeldunAppraiser_OnCombat")
RegisterUnitEvent(2990, 2, "BaeldunAppraiser_OnLeaveCombat")
RegisterUnitEvent(2990, 3, "BaeldunAppraiser_OnKilledTarget")
RegisterUnitEvent(2990, 4, "BaeldunAppraiser_OnDied")