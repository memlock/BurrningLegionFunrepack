--[[ Tanaris -- Omgorn the Lost.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function OmgorntheLost_OnCombat(Unit, Event)
Unit:RegisterEvent("OmgorntheLost_MortalStrike", 6000, 0)
Unit:RegisterEvent("OmgorntheLost_Enrage", 12000, 0)
end

function OmgorntheLost_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function OmgorntheLost_Enrage(pUnit, Event)
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function OmgorntheLost_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OmgorntheLost_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OmgorntheLost_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8201, 1, "OmgorntheLost_OnCombat")
RegisterUnitEvent(8201, 2, "OmgorntheLost_OnLeaveCombat")
RegisterUnitEvent(8201, 3, "OmgorntheLost_OnKilledTarget")
RegisterUnitEvent(8201, 4, "OmgorntheLost_OnDied")