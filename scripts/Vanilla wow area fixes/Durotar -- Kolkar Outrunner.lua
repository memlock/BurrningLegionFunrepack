--[[ Durotar -- Kolkar Outrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KolkarOutrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarOutrunner_Shoot", 6000, 0)
end

function KolkarOutrunner_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function KolkarOutrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarOutrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarOutrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3120, 1, "KolkarOutrunner_OnCombat")
RegisterUnitEvent(3120, 2, "KolkarOutrunner_OnLeaveCombat")
RegisterUnitEvent(3120, 3, "KolkarOutrunner_OnKilledTarget")
RegisterUnitEvent(3120, 4, "KolkarOutrunner_OnDied")