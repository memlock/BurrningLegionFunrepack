--[[ Dragonblight -- Icefist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Icefist_OnCombat(Unit, Event)
Unit:RegisterEvent("Icefist_IceSlash", 6000, 0)
Unit:RegisterEvent("Icefist_TuskStrike", 8000, 0)
end

function Icefist_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function Icefist_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Icefist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icefist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icefist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27004, 1, "Icefist_OnCombat")
RegisterUnitEvent(27004, 2, "Icefist_OnLeaveCombat")
RegisterUnitEvent(27004, 3, "Icefist_OnKilledTarget")
RegisterUnitEvent(27004, 4, "Icefist_OnDied")