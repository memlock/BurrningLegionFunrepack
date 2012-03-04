--[[ Stonetalon Mountains -- Bloodfury Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRipper_Enrage", 15000, 1)
Unit:RegisterEvent("BloodfuryRipper_Rend", 10000, 0)
end

function BloodfuryRipper_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function BloodfuryRipper_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function BloodfuryRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12579, 1, "BloodfuryRipper_OnCombat")
RegisterUnitEvent(12579, 2, "BloodfuryRipper_OnLeaveCombat")
RegisterUnitEvent(12579, 3, "BloodfuryRipper_OnKilledTarget")
RegisterUnitEvent(12579, 4, "BloodfuryRipper_OnDied")