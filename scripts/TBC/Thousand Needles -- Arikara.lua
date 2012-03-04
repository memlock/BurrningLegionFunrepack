--[[ Thousand Needles -- Arikara.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Arikara_OnCombat(Unit, Event)
Unit:RegisterEvent("Arikara_CurseofVengeance", 10000, 3)
Unit:RegisterEvent("Arikara_Enrage", 120000, 0)
end

function Arikara_CurseofVengeance(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17213, pUnit:GetMainTank()) 
end

function Arikara_Enrage(pUnit, Event)
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function Arikara_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arikara_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arikara_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10882, 1, "Arikara_OnCombat")
RegisterUnitEvent(10882, 2, "Arikara_OnLeaveCombat")
RegisterUnitEvent(10882, 3, "Arikara_OnKilledTarget")
RegisterUnitEvent(10882, 4, "Arikara_OnDied")