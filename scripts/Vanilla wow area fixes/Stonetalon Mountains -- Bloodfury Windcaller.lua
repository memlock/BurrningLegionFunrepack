--[[ Stonetalon Mountains -- Bloodfury Windcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryWindcaller_EnvelopingWinds", 15000, 0)
end

function BloodfuryWindcaller_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function BloodfuryWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4026, 1, "BloodfuryWindcaller_OnCombat")
RegisterUnitEvent(4026, 2, "BloodfuryWindcaller_OnLeaveCombat")
RegisterUnitEvent(4026, 3, "BloodfuryWindcaller_OnKilledTarget")
RegisterUnitEvent(4026, 4, "BloodfuryWindcaller_OnDied")