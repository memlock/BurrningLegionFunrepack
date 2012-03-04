--[[ Teldrassil -- Webwood Silkspinner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function WebwoodSilkspinner_OnCombat(Unit, Event)
Unit:RegisterEvent("WebwoodSilkspinner_Web", 8000, 0)
end

function WebwoodSilkspinner_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12023, pUnit:GetMainTank()) 
end

function WebwoodSilkspinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WebwoodSilkspinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WebwoodSilkspinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2000, 1, "WebwoodSilkspinner_OnCombat")
RegisterUnitEvent(2000, 2, "WebwoodSilkspinner_OnLeaveCombat")
RegisterUnitEvent(2000, 3, "WebwoodSilkspinner_OnKilledTarget")
RegisterUnitEvent(2000, 4, "WebwoodSilkspinner_OnDied")