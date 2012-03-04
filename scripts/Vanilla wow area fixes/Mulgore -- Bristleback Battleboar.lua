--[[ Mulgore -- Bristleback Battleboar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]


function BristlebackBattleboar_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackBattleboar_BoarCharge", 8000, 0)
end

function BristlebackBattleboar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function BristlebackBattleboar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackBattleboar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackBattleboar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2954, 1, "BristlebackBattleboar_OnCombat")
RegisterUnitEvent(2954, 2, "BristlebackBattleboar_OnLeaveCombat")
RegisterUnitEvent(2954, 3, "BristlebackBattleboar_OnKilledTarget")
RegisterUnitEvent(2954, 4, "BristlebackBattleboar_OnDied")