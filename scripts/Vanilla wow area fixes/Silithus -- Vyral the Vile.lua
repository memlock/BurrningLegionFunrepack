--[[ Silithus -- Vyral the Vile.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function VyraltheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("VyraltheVile_Fireball", 8000, 0)
Unit:RegisterEvent("VyraltheVile_ShadowShock", 6000, 0)
end

function VyraltheVile_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function VyraltheVile_ShadowShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17439, pUnit:GetMainTank()) 
end

function VyraltheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VyraltheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VyraltheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15202, 1, "VyraltheVile_OnCombat")
RegisterUnitEvent(15202, 2, "VyraltheVile_OnLeaveCombat")
RegisterUnitEvent(15202, 3, "VyraltheVile_OnKilledTarget")
RegisterUnitEvent(15202, 4, "VyraltheVile_OnDied")