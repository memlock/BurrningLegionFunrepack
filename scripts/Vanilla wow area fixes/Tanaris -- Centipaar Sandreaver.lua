--[[ Tanaris -- Centipaar Sandreaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarSandreaver_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarSandreaver_ArcingSmash", 5000, 0)
Unit:RegisterEvent("CentipaarSandreaver_Thrash", 6000, 0)
end

function CentipaarSandreaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function CentipaarSandreaver_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarSandreaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarSandreaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarSandreaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5460, 1, "CentipaarSandreaver_OnCombat")
RegisterUnitEvent(5460, 2, "CentipaarSandreaver_OnLeaveCombat")
RegisterUnitEvent(5460, 3, "CentipaarSandreaver_OnKilledTarget")
RegisterUnitEvent(5460, 4, "CentipaarSandreaver_OnDied")