--[[ Stonetalon Mountains -- Bloodfury Ambusher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryAmbusher_Shock", 8000, 1)
end

function BloodfuryAmbusher_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2608, pUnit:GetMainTank()) 
end

function BloodfuryAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4025, 1, "BloodfuryAmbusher_OnCombat")
RegisterUnitEvent(4025, 2, "BloodfuryAmbusher_OnLeaveCombat")
RegisterUnitEvent(4025, 3, "BloodfuryAmbusher_OnKilledTarget")
RegisterUnitEvent(4025, 4, "BloodfuryAmbusher_OnDied")