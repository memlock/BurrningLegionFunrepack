--[[ Grizzly Hills -- Rune Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RuneReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneReaver_RuneofRetribution", 3000, 1)
end

function RuneReaver_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(52628) 
end

function RuneReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26268, 1, "RuneReaver_OnCombat")
RegisterUnitEvent(26268, 2, "RuneReaver_OnLeaveCombat")
RegisterUnitEvent(26268, 3, "RuneReaver_OnKilledTarget")
RegisterUnitEvent(26268, 4, "RuneReaver_OnDied")