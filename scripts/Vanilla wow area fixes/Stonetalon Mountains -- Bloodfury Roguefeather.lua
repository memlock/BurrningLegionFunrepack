--[[ Stonetalon Mountains -- Bloodfury Roguefeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRoguefeather_Thrash", 5000, 0)
end

function BloodfuryRoguefeather_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function BloodfuryRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4023, 1, "BloodfuryRoguefeather_OnCombat")
RegisterUnitEvent(4023, 2, "BloodfuryRoguefeather_OnLeaveCombat")
RegisterUnitEvent(4023, 3, "BloodfuryRoguefeather_OnKilledTarget")
RegisterUnitEvent(4023, 4, "BloodfuryRoguefeather_OnDied")