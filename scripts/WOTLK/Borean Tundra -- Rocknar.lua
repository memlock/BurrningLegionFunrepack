--[[ Borean Tundra -- Rocknar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Rocknar_OnCombat(Unit, Event)
Unit:RegisterEvent("Rocknar_HardenSkin", 2000, 1)
Unit:RegisterEvent("Rocknar_IceSpike", 8000, 0)
end

function Rocknar_HardenSkin(pUnit, Event) 
pUnit:CastSpell(22693) 
end

function Rocknar_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function Rocknar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rocknar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rocknar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25514, 1, "Rocknar_OnCombat")
RegisterUnitEvent(25514, 2, "Rocknar_OnLeaveCombat")
RegisterUnitEvent(25514, 3, "Rocknar_OnKilledTarget")
RegisterUnitEvent(25514, 4, "Rocknar_OnDied")