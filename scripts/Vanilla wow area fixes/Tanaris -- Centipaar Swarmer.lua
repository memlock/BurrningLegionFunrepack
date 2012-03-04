--[[ Tanaris -- Centipaar Swarmer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarSwarmer_SilithidSwarm", 10000, 1)
Unit:RegisterEvent("CentipaarSwarmer_Thrash", 6000, 0)
end

function CentipaarSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function CentipaarSwarmer_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5457, 1, "CentipaarSwarmer_OnCombat")
RegisterUnitEvent(5457, 2, "CentipaarSwarmer_OnLeaveCombat")
RegisterUnitEvent(5457, 3, "CentipaarSwarmer_OnKilledTarget")
RegisterUnitEvent(5457, 4, "CentipaarSwarmer_OnDied")