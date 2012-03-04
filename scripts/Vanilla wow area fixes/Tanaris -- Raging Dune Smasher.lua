--[[ Tanaris -- Raging Dune Smasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RagingDuneSmasher_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingDuneSmasher_Enrage", 120000, 0)
end

function RagingDuneSmasher_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function RagingDuneSmasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingDuneSmasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingDuneSmasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5470, 1, "RagingDuneSmasher_OnCombat")
RegisterUnitEvent(5470, 2, "RagingDuneSmasher_OnLeaveCombat")
RegisterUnitEvent(5470, 3, "RagingDuneSmasher_OnKilledTarget")
RegisterUnitEvent(5470, 4, "RagingDuneSmasher_OnDied")