--[[ Azshara -- Highborne Lichling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function HighborneLichling_OnCombat(Unit, Event)
Unit:RegisterEvent("HighborneLichling_FrostArmor", 1000, 2)
Unit:RegisterEvent("HighborneLichling_Frostbolt", 8000, 0)
end

function HighborneLichling_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function HighborneLichling_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20822, pUnit:GetMainTank()) 
end

function HighborneLichling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighborneLichling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighborneLichling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6117, 1, "HighborneLichling_OnCombat")
RegisterUnitEvent(6117, 2, "HighborneLichling_OnLeaveCombat")
RegisterUnitEvent(6117, 3, "HighborneLichling_OnKilledTarget")
RegisterUnitEvent(6117, 4, "HighborneLichling_OnDied")