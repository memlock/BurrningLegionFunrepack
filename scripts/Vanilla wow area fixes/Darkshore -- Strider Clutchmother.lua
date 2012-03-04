--[[ Darkshore -- Strider Clutchmother.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function StriderClutchmother_OnCombat(Unit, Event)
Unit:RegisterEvent("StriderClutchmother_DustCloud", 10000, 0)
Unit:RegisterEvent("StriderClutchmother_Lash", 7000, 0)
end

function StriderClutchmother_DustCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7272, pUnit:GetMainTank()) 
end

function StriderClutchmother_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function StriderClutchmother_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StriderClutchmother_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StriderClutchmother_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2172, 1, "StriderClutchmother_OnCombat")
RegisterUnitEvent(2172, 2, "StriderClutchmother_OnLeaveCombat")
RegisterUnitEvent(2172, 3, "StriderClutchmother_OnKilledTarget")
RegisterUnitEvent(2172, 4, "StriderClutchmother_OnDied")