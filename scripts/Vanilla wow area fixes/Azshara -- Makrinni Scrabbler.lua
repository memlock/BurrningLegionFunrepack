--[[ Azshara -- Makrinni Scrabbler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MakrinniScrabbler_OnCombat(Unit, Event)
Unit:RegisterEvent("MakrinniScrabbler_Frostbolt", 8000, 0)
Unit:RegisterEvent("MakrinniScrabbler_Heal", 14000, 0)
end

function MakrinniScrabbler_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20822, pUnit:GetMainTank()) 
end

function MakrinniScrabbler_Heal(pUnit, Event) 
pUnit:CastSpell(11642) 
end

function MakrinniScrabbler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakrinniScrabbler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakrinniScrabbler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6370, 1, "MakrinniScrabbler_OnCombat")
RegisterUnitEvent(6370, 2, "MakrinniScrabbler_OnLeaveCombat")
RegisterUnitEvent(6370, 3, "MakrinniScrabbler_OnKilledTarget")
RegisterUnitEvent(6370, 4, "MakrinniScrabbler_OnDied")