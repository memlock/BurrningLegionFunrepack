--[[ Thousand Needles -- Silithid Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SilithidRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidRavager_StrongCleave", 5000, 0)
end

function SilithidRavager_StrongCleave(pUnit, Event) 
pUnit:CastSpell(8255) 
end

function SilithidRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4132, 1, "SilithidRavager_OnCombat")
RegisterUnitEvent(4132, 2, "SilithidRavager_OnLeaveCombat")
RegisterUnitEvent(4132, 3, "SilithidRavager_OnKilledTarget")
RegisterUnitEvent(4132, 4, "SilithidRavager_OnDied")