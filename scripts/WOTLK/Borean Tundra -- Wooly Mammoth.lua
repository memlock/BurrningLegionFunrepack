--[[ Borean Tundra -- Wooly Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WoolyMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("WoolyMammoth_Trample", 6000, 0)
end

function WoolyMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(15550) 
end

function WoolyMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoolyMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoolyMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24614, 1, "WoolyMammoth_OnCombat")
RegisterUnitEvent(24614, 2, "WoolyMammoth_OnLeaveCombat")
RegisterUnitEvent(24614, 3, "WoolyMammoth_OnKilledTarget")
RegisterUnitEvent(24614, 4, "WoolyMammoth_OnDied")