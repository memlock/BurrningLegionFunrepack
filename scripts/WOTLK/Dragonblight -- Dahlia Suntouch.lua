--[[ Dragonblight -- Dahlia Suntouch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DahliaSuntouch_OnCombat(Unit, Event)
Unit:RegisterEvent("DahliaSuntouch_BansheeCurse", 4000, 1)
Unit:RegisterEvent("DahliaSuntouch_BansheeScreech", 6000, 1)
Unit:RegisterEvent("DahliaSuntouch_BansheeWail", 7000, 0)
end

function DahliaSuntouch_BansheeCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51899, pUnit:GetMainTank()) 
end

function DahliaSuntouch_BansheeScreech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51897, pUnit:GetMainTank()) 
end

function DahliaSuntouch_BansheeWail(pUnit, Event) 
pUnit:FullCastSpellOnTarget(28993, pUnit:GetMainTank()) 
end

function DahliaSuntouch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DahliaSuntouch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DahliaSuntouch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27680, 1, "DahliaSuntouch_OnCombat")
RegisterUnitEvent(27680, 2, "DahliaSuntouch_OnLeaveCombat")
RegisterUnitEvent(27680, 3, "DahliaSuntouch_OnKilledTarget")
RegisterUnitEvent(27680, 4, "DahliaSuntouch_OnDied")