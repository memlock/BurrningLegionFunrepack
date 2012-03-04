--[[ Durotar -- Burning Blade Cultist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeCultist_Immolate", 8000, 0)
end

function BurningBladeCultist_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function BurningBladeCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3199, 1, "BurningBladeCultist_OnCombat")
RegisterUnitEvent(3199, 2, "BurningBladeCultist_OnLeaveCombat")
RegisterUnitEvent(3199, 3, "BurningBladeCultist_OnKilledTarget")
RegisterUnitEvent(3199, 4, "BurningBladeCultist_OnDied")