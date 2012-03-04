--[[ Ashenvale -- Warsong Outrider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WarsongOutrider_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongOutrider_ScorpidSting", 8000, 0)
Unit:RegisterEvent("WarsongOutrider_Shoot", 6000, 0)
end

function WarsongOutrider_ScorpidSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18545, pUnit:GetMainTank()) 
end

function WarsongOutrider_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function WarsongOutrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongOutrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongOutrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12864, 1, "WarsongOutrider_OnCombat")
RegisterUnitEvent(12864, 2, "WarsongOutrider_OnLeaveCombat")
RegisterUnitEvent(12864, 3, "WarsongOutrider_OnKilledTarget")
RegisterUnitEvent(12864, 4, "WarsongOutrider_OnDied")