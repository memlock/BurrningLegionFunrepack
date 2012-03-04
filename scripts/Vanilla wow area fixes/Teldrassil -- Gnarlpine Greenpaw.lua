--[[ Teldrassil -- Gnarlpine Greenpaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Greenpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Greenpaw_Rejuvenation", 10000, 0)
Unit:RegisterEvent("Greenpaw_Shock", 6000, 0)
end

function Greenpaw_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function Greenpaw_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2606, pUnit:GetMainTank()) 
end

function Greenpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Greenpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Greenpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(1993, 1, "Greenpaw_OnCombat")
RegisterUnitEvent(1993, 2, "Greenpaw_OnLeaveCombat")
RegisterUnitEvent(1993, 3, "Greenpaw_OnKilledTarget")
RegisterUnitEvent(1993, 4, "Greenpaw_OnDied")