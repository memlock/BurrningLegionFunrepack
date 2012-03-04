--[[ Stonetalon Mountains -- PridewingPatriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function PridewingPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingPatriarch_CorrosivePoison", 10000, 0)
end

function PridewingPatriarch_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function PridewingPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4015, 1, "PridewingPatriarch_OnCombat")
RegisterUnitEvent(4015, 2, "PridewingPatriarch_OnLeaveCombat")
RegisterUnitEvent(4015, 3, "PridewingPatriarch_OnKilledTarget")
RegisterUnitEvent(4015, 4, "PridewingPatriarch_OnDied")