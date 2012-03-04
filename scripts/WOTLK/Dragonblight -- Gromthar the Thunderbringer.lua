--[[ Dragonblight -- Gromthar the Thunderbringer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function GromthartheThunderbringer_OnCombat(Unit, Event)
Unit:RegisterEvent("GromthartheThunderbringer_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("GromthartheThunderbringer_Thunder", 10000, 0)
end

function GromthartheThunderbringer_MagnataurCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52169, pUnit:GetMainTank()) 
end

function GromthartheThunderbringer_Thunder(pUnit, Event) 
pUnit:CastSpell(52166) 
end

function GromthartheThunderbringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GromthartheThunderbringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GromthartheThunderbringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27002, 1, "GromthartheThunderbringer_OnCombat")
RegisterUnitEvent(27002, 2, "GromthartheThunderbringer_OnLeaveCombat")
RegisterUnitEvent(27002, 3, "GromthartheThunderbringer_OnKilledTarget")
RegisterUnitEvent(27002, 4, "GromthartheThunderbringer_OnDied")