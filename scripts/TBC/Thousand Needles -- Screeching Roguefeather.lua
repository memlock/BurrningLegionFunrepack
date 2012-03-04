--[[ Thousand Needles -- Screeching Roguefeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScreechingRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingRoguefeather_ExploitWeakness", 5000, 0)
end

function ScreechingRoguefeather_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function ScreechingRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4101, 1, "ScreechingRoguefeather_OnCombat")
RegisterUnitEvent(4101, 2, "ScreechingRoguefeather_OnLeaveCombat")
RegisterUnitEvent(4101, 3, "ScreechingRoguefeather_OnKilledTarget")
RegisterUnitEvent(4101, 4, "ScreechingRoguefeather_OnDied")