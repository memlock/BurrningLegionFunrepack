--[[ Azshara -- Lingering Highborne.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LingeringHighborne_OnCombat(Unit, Event)
Unit:RegisterEvent("LingeringHighborne_Enfeeble", 8000, 0)
end

function LingeringHighborne_Enfeeble(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11963, pUnit:GetMainTank()) 
end

function LingeringHighborne_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LingeringHighborne_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LingeringHighborne_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7864, 1, "LingeringHighborne_OnCombat")
RegisterUnitEvent(7864, 2, "LingeringHighborne_OnLeaveCombat")
RegisterUnitEvent(7864, 3, "LingeringHighborne_OnKilledTarget")
RegisterUnitEvent(7864, 4, "LingeringHighborne_OnDied")