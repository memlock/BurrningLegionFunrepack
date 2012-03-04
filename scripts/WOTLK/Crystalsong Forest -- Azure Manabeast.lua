--[[ Crystalsong Forest -- Azure Manabeast.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AzureManabeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureManabeast_ManaBite", 8000, 0)
end

function AzureManabeast_ManaBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59105, pUnit:GetMainTank()) 
end

function AzureManabeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureManabeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureManabeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31404, 1, "AzureManabeast_OnCombat")
RegisterUnitEvent(31404, 2, "AzureManabeast_OnLeaveCombat")
RegisterUnitEvent(31404, 3, "AzureManabeast_OnKilledTarget")
RegisterUnitEvent(31404, 4, "AzureManabeast_OnDied")