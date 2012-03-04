--[[ Crystalsong Forest -- Unbound Ent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundEnt_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundEnt_CorruptedRejuvenation", 8000, 0)
Unit:RegisterEvent("UnboundEnt_Thorns", 2000, 1)
end

function UnboundEnt_CorruptedRejuvenation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58624, pUnit:GetMainTank()) 
end

function UnboundEnt_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function UnboundEnt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundEnt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundEnt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30862, 1, "UnboundEnt_OnCombat")
RegisterUnitEvent(30862, 2, "UnboundEnt_OnLeaveCombat")
RegisterUnitEvent(30862, 3, "UnboundEnt_OnKilledTarget")
RegisterUnitEvent(30862, 4, "UnboundEnt_OnDied")