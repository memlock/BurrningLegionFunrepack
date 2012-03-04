--[[ Dragonblight -- Lead Cannoneer Zierhut.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function LeadCannoneerZierhut_OnCombat(Unit, Event)
Unit:RegisterEvent("LeadCannoneerZierhut_TorchToss", 2000, 1)
end

function LeadCannoneerZierhut_TorchToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50832, pUnit:GetMainTank()) 
end

function LeadCannoneerZierhut_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LeadCannoneerZierhut_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LeadCannoneerZierhut_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27235, 1, "LeadCannoneerZierhut_OnCombat")
RegisterUnitEvent(27235, 2, "LeadCannoneerZierhut_OnLeaveCombat")
RegisterUnitEvent(27235, 3, "LeadCannoneerZierhut_OnKilledTarget")
RegisterUnitEvent(27235, 4, "LeadCannoneerZierhut_OnDied")