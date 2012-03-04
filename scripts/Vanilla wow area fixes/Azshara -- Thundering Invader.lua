--[[ Azshara -- Thundering Invader.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThunderingInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderingInvader_EarthShock", 6000, 0)
Unit:RegisterEvent("ThunderingInvader_Knockdown", 8000, 0)
end

function ThunderingInvader_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23114, pUnit:GetMainTank()) 
end

function ThunderingInvader_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function ThunderingInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderingInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderingInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14462, 1, "ThunderingInvader_OnCombat")
RegisterUnitEvent(14462, 2, "ThunderingInvader_OnLeaveCombat")
RegisterUnitEvent(14462, 3, "ThunderingInvader_OnKilledTarget")
RegisterUnitEvent(14462, 4, "ThunderingInvader_OnDied")