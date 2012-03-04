--[[ Dragonblight -- Horde Conscript.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HordeConscript_OnCombat(Unit, Event)
Unit:RegisterEvent("HordeConscript_HeroicStrike", 8000, 0)
Unit:RegisterEvent("HordeConscript_Shoot", 6000, 0)
end

function HordeConscript_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29426, pUnit:GetMainTank()) 
end

function HordeConscript_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function HordeConscript_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HordeConscript_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HordeConscript_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27749, 1, "HordeConscript_OnCombat")
RegisterUnitEvent(27749, 2, "HordeConscript_OnLeaveCombat")
RegisterUnitEvent(27749, 3, "HordeConscript_OnKilledTarget")
RegisterUnitEvent(27749, 4, "HordeConscript_OnDied")