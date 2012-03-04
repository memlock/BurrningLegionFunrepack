--[[ Borean Tundra -- Churn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Churn_OnCombat(Unit, Event)
Unit:RegisterEvent("Churn_ScaldingSteam", 8000, 0)
end

function Churn_ScaldingSteam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50206, pUnit:GetMainTank()) 
end

function Churn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Churn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Churn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25418, 1, "Churn_OnCombat")
RegisterUnitEvent(25418, 2, "Churn_OnLeaveCombat")
RegisterUnitEvent(25418, 3, "Churn_OnKilledTarget")
RegisterUnitEvent(25418, 4, "Churn_OnDied")