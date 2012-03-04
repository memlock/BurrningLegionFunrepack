--[[ Tanaris -- Warleader Krazzilak.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WarleaderKrazzilak_OnCombat(Unit, Event)
Unit:RegisterEvent("WarleaderKrazzilak_Backhand", 8000, 0)
Unit:RegisterEvent("WarleaderKrazzilak_Hamstring", 15000, 0)
Unit:RegisterEvent("WarleaderKrazzilak_InfectedWound", 20000, 1)
end

function WarleaderKrazzilak_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18103, pUnit:GetMainTank()) 
end

function WarleaderKrazzilak_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WarleaderKrazzilak_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17230, pUnit:GetMainTank()) 
end

function WarleaderKrazzilak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarleaderKrazzilak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarleaderKrazzilak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8199, 1, "WarleaderKrazzilak_OnCombat")
RegisterUnitEvent(8199, 2, "WarleaderKrazzilak_OnLeaveCombat")
RegisterUnitEvent(8199, 3, "WarleaderKrazzilak_OnKilledTarget")
RegisterUnitEvent(8199, 4, "WarleaderKrazzilak_OnDied")