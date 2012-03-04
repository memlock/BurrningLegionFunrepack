--[[ Crystalsong Forest -- Azure Spellweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AzureSpellweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureSpellweaver_ArcaneMissiles", 6000, 0)
end

function AzureSpellweaver_ArcaneMissiles(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34447, pUnit:GetMainTank()) 
end

function AzureSpellweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureSpellweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureSpellweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31403, 1, "AzureSpellweaver_OnCombat")
RegisterUnitEvent(31403, 2, "AzureSpellweaver_OnLeaveCombat")
RegisterUnitEvent(31403, 3, "AzureSpellweaver_OnKilledTarget")
RegisterUnitEvent(31403, 4, "AzureSpellweaver_OnDied")