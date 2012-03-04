--[[ Grizzly Hills -- Rustblood.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Rustblood_OnCombat(Unit, Event)
Unit:RegisterEvent("Rustblood_Cleave", 8000, 0)
Unit:RegisterEvent("Rustblood_HeadSmash", 10000, 0)
Unit:RegisterEvent("Rustblood_Knockback", 11000, 0)
Unit:RegisterEvent("Rustblood_LightningBolt", 6000, 0)
end

function Rustblood_Cleave(pUnit, Event) 
pUnit:CastSpell(42746) 
end

function Rustblood_HeadSmash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14102, pUnit:GetMainTank()) 
end

function Rustblood_Knockback(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49398, pUnit:GetMainTank()) 
end

function Rustblood_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49454, pUnit:GetMainTank()) 
end

function Rustblood_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rustblood_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rustblood_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27717, 1, "Rustblood_OnCombat")
RegisterUnitEvent(27717, 2, "Rustblood_OnLeaveCombat")
RegisterUnitEvent(27717, 3, "Rustblood_OnKilledTarget")
RegisterUnitEvent(27717, 4, "Rustblood_OnDied")