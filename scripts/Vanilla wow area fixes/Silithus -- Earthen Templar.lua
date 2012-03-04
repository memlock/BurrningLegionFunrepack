--[[ Silithus -- Earthen Templar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function EarthenTemplar_OnCombat(Unit, Event)
Unit:RegisterEvent("EarthenTemplar_KnockAway", 6000, 0)
Unit:RegisterEvent("EarthenTemplar_EntanglingRoots", 8000, 0)
end

function EarthenTemplar_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18813, pUnit:GetMainTank()) 
end

function EarthenTemplar_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22127, pUnit:GetRandomPlayer(0)) 
end

function EarthenTemplar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EarthenTemplar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EarthenTemplar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15307, 1, "EarthenTemplar_OnCombat")
RegisterUnitEvent(15307, 2, "EarthenTemplar_OnLeaveCombat")
RegisterUnitEvent(15307, 3, "EarthenTemplar_OnKilledTarget")
RegisterUnitEvent(15307, 4, "EarthenTemplar_OnDied")