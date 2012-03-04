--[[ Dragonblight -- Chilltusk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Chilltusk_OnCombat(Unit, Event)
Unit:RegisterEvent("Chilltusk_IceSlash", 6000, 0)
Unit:RegisterEvent("Chilltusk_TuskStrike", 5000, 0)
end

function Chilltusk_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function Chilltusk_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Chilltusk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Chilltusk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Chilltusk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27005, 1, "Chilltusk_OnCombat")
RegisterUnitEvent(27005, 2, "Chilltusk_OnLeaveCombat")
RegisterUnitEvent(27005, 3, "Chilltusk_OnKilledTarget")
RegisterUnitEvent(27005, 4, "Chilltusk_OnDied")