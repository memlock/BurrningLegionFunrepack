--[[ Thousand Needles -- Highperch Patriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HighperchPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchPatriarch_Poison", 12000, 0)
end

function HighperchPatriarch_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4110, 1, "HighperchPatriarch_OnCombat")
RegisterUnitEvent(4110, 2, "HighperchPatriarch_OnLeaveCombat")
RegisterUnitEvent(4110, 3, "HighperchPatriarch_OnKilledTarget")
RegisterUnitEvent(4110, 4, "HighperchPatriarch_OnDied")