--[[ Azuremyst Isle -- "Cookie" McWeaksauce.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function CookieMcWeaksauce_OnCombat(Unit, Event)
Unit:RegisterEvent("CookieMcWeaksauce_Shoot", 6000, 0)
end

function CookieMcWeaksauce_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30221, pUnit:GetRandomPlayer(0)) 
end

function CookieMcWeaksauce_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CookieMcWeaksauce_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CookieMcWeaksauce_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17246, 1, "CookieMcWeaksauce_OnCombat")
RegisterUnitEvent(17246, 2, "CookieMcWeaksauce_OnLeaveCombat")
RegisterUnitEvent(17246, 3, "CookieMcWeaksauce_OnKilledTarget")
RegisterUnitEvent(17246, 4, "CookieMcWeaksauce_OnDied")