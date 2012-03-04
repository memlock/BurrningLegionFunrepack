--[[ Crystalsong Forest -- Unbound Dryad.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundDryad_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundDryad_ThrowSpear", 6000, 0)
end

function UnboundDryad_ThrowSpear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(55217, pUnit:GetMainTank()) 
end

function UnboundDryad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundDryad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundDryad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30860, 1, "UnboundDryad_OnCombat")
RegisterUnitEvent(30860, 2, "UnboundDryad_OnLeaveCombat")
RegisterUnitEvent(30860, 3, "UnboundDryad_OnKilledTarget")
RegisterUnitEvent(30860, 4, "UnboundDryad_OnDied")