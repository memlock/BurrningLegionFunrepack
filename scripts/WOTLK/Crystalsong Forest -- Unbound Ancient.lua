--[[ Crystalsong Forest -- Unbound Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundAncient_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("UnboundAncient_Trample", 6000, 0)
end

function UnboundAncient_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33844, pUnit:GetMainTank()) 
end

function UnboundAncient_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function UnboundAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30861, 1, "UnboundAncient_OnCombat")
RegisterUnitEvent(30861, 2, "UnboundAncient_OnLeaveCombat")
RegisterUnitEvent(30861, 3, "UnboundAncient_OnKilledTarget")
RegisterUnitEvent(30861, 4, "UnboundAncient_OnDied")