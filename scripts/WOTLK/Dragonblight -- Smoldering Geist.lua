--[[ Dragonblight -- Smoldering Geist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SmolderingGeist_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingGeist_BurningBlaze", 6500, 0)
end

function SmolderingGeist_BurningBlaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51500, pUnit:GetMainTank()) 
end

function SmolderingGeist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingGeist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingGeist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27363, 1, "SmolderingGeist_OnCombat")
RegisterUnitEvent(27363, 2, "SmolderingGeist_OnLeaveCombat")
RegisterUnitEvent(27363, 3, "SmolderingGeist_OnKilledTarget")
RegisterUnitEvent(27363, 4, "SmolderingGeist_OnDied")