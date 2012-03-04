--[[ Stonetalon Mountains -- Bloodfury Slayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfurySlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRoguefeather_CurseofRecklessness", 5000, 2)
end

function BloodfuryRoguefeather_CurseofRecklessness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16231, pUnit:GetMainTank()) 
end

function BloodfurySlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfurySlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfurySlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4024, 1, "BloodfurySlayer_OnCombat")
RegisterUnitEvent(4024, 2, "BloodfurySlayer_OnLeaveCombat")
RegisterUnitEvent(4024, 3, "BloodfurySlayer_OnKilledTarget")
RegisterUnitEvent(4024, 4, "BloodfurySlayer_OnDied")