--[[ Silithus -- Azure Templar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function AzureTemplar_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureTemplar_FrostNova", 8000, 0)
Unit:RegisterEvent("AzureTemplar_FrostShock", 6000, 0)
end

function AzureTemplar_FrostNova(pUnit, Event) 
pUnit:CastSpell(14907) 
end

function AzureTemplar_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function AzureTemplar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureTemplar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureTemplar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15211, 1, "AzureTemplar_OnCombat")
RegisterUnitEvent(15211, 2, "AzureTemplar_OnLeaveCombat")
RegisterUnitEvent(15211, 3, "AzureTemplar_OnKilledTarget")
RegisterUnitEvent(15211, 4, "AzureTemplar_OnDied")