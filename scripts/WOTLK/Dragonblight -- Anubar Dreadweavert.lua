--[[ Dragonblight -- Anubar Dreadweavert.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarDreadweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarDreadweaver_Corruption", 5000, 1)
Unit:RegisterEvent("AnubarDreadweaver_ShadowBolt", 8000, 0)
end

function AnubarDreadweaver_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32063, pUnit:GetMainTank()) 
end

function AnubarDreadweaver_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AnubarDreadweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarDreadweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarDreadweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26413, 1, "AnubarDreadweaver_OnCombat")
RegisterUnitEvent(26413, 2, "AnubarDreadweaver_OnLeaveCombat")
RegisterUnitEvent(26413, 3, "AnubarDreadweaver_OnKilledTarget")
RegisterUnitEvent(26413, 4, "AnubarDreadweaver_OnDied")