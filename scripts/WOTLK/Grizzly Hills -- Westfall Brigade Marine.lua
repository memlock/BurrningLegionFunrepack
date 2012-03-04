--[[ Grizzly Hills -- Westfall Brigade Marine.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function WestfallBrigadeMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeMarine_ConcussionBlow", 9000, 0)
Unit:RegisterEvent("WestfallBrigadeMarine_SunderArmor", 5000, 0)
end

function WestfallBrigadeMarine_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52719, pUnit:GetMainTank()) 
end

function WestfallBrigadeMarine_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50307, pUnit:GetMainTank()) 
end

function WestfallBrigadeMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27501, 1, "WestfallBrigadeMarine_OnCombat")
RegisterUnitEvent(27501, 2, "WestfallBrigadeMarine_OnLeaveCombat")
RegisterUnitEvent(27501, 3, "WestfallBrigadeMarine_OnKilledTarget")
RegisterUnitEvent(27501, 4, "WestfallBrigadeMarine_OnDied")