--[[ Teldrassil -- Lord Melenas.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function LordMelenas_OnCombat(Unit, Event)
Unit:RegisterEvent("LordMelenas_CatForm", 1000, 1)
Unit:RegisterEvent("LordMelenas_Rake", 6000, 0)
Unit:RegisterEvent("LordMelenas_Rejuvenation", 12000, 0)
end

function LordMelenas_CatForm(pUnit, Event) 
pUnit:CastSpell(5759) 
end

function LordMelenas_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1822, pUnit:GetMainTank()) 
end

function LordMelenas_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function LordMelenas_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LordMelenas_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LordMelenas_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2038, 1, "LordMelenas_OnCombat")
RegisterUnitEvent(2038, 2, "LordMelenas_OnLeaveCombat")
RegisterUnitEvent(2038, 3, "LordMelenas_OnKilledTarget")
RegisterUnitEvent(2038, 4, "LordMelenas_OnDied")