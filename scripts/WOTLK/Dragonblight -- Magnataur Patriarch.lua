--[[ Dragonblight -- Magnataur Patriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MagnataurPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("MagnataurPatriarch_Throw", 5000, 0)
end

function MagnataurPatriarch_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function MagnataurPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagnataurPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagnataurPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26295, 1, "MagnataurPatriarch_OnCombat")
RegisterUnitEvent(26295, 2, "MagnataurPatriarch_OnLeaveCombat")
RegisterUnitEvent(26295, 3, "MagnataurPatriarch_OnKilledTarget")
RegisterUnitEvent(26295, 4, "MagnataurPatriarch_OnDied")