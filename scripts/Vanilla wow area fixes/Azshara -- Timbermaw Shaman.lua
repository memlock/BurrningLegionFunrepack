--[[ Azshara -- Timbermaw Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TimbermawShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawShaman_LightningBolt", 8000, 0)
end

function TimbermawShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20295, pUnit:GetMainTank()) 
end

function TimbermawShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6188, 1, "TimbermawShaman_OnCombat")
RegisterUnitEvent(6188, 2, "TimbermawShaman_OnLeaveCombat")
RegisterUnitEvent(6188, 3, "TimbermawShaman_OnKilledTarget")
RegisterUnitEvent(6188, 4, "TimbermawShaman_OnDied")