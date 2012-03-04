--[[ Grizzly Hills -- Silverbrook Worgen.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookWorgen_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookWorgen_Dash", 10000, 0)
end

function SilverbrookWorgen_Dash(pUnit, Event) 
pUnit:CastSpell(36589) 
end

function SilverbrookWorgen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookWorgen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookWorgen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(47417, 1, "SilverbrookWorgen_OnCombat")
RegisterUnitEvent(47417, 2, "SilverbrookWorgen_OnLeaveCombat")
RegisterUnitEvent(47417, 3, "SilverbrookWorgen_OnKilledTarget")
RegisterUnitEvent(47417, 4, "SilverbrookWorgen_OnDied")