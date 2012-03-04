--[[ Ashenvale -- Lesser Felguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LesserFelguard_OnCombat(Unit, Event)
Unit:RegisterEvent("LesserFelguard_FireShieldII", 1000, 1)
Unit:RegisterEvent("LesserFelguard_Knockdown", 7000, 0)
end

function LesserFelguard_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function LesserFelguard_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18812, pUnit:GetMainTank()) 
end

function LesserFelguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LesserFelguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LesserFelguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3772, 1, "LesserFelguard_OnCombat")
RegisterUnitEvent(3772, 2, "LesserFelguard_OnLeaveCombat")
RegisterUnitEvent(3772, 3, "LesserFelguard_OnKilledTarget")
RegisterUnitEvent(3772, 4, "LesserFelguard_OnDied")