--[[ Darkshore -- Cursed Highborne.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function CursedHighborne_OnCombat(Unit, Event)
Unit:RegisterEvent("CursedHighborne_BansheeCurse", 9000, 0)
end

function CursedHighborne_BansheeCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5884, pUnit:GetMainTank()) 
end

function CursedHighborne_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CursedHighborne_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CursedHighborne_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2176, 1, "CursedHighborne_OnCombat")
RegisterUnitEvent(2176, 2, "CursedHighborne_OnLeaveCombat")
RegisterUnitEvent(2176, 3, "CursedHighborne_OnKilledTarget")
RegisterUnitEvent(2176, 4, "CursedHighborne_OnDied")