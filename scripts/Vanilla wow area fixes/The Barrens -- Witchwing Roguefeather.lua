--[[ The Barrens -- Witchwing Roguefeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingRoguefeather_ExploitWeakness", 60000, 0)
Unit:RegisterEvent("WitchwingRoguefeather_SlowingPoison", 10000, 0)
end

function WitchwingRoguefeather_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function WitchwingRoguefeather_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function WitchwingRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3277, 1, "WitchwingRoguefeather_OnCombat")
RegisterUnitEvent(3277, 2, "WitchwingRoguefeather_OnLeaveCombat")
RegisterUnitEvent(3277, 3, "WitchwingRoguefeather_OnKilledTarget")
RegisterUnitEvent(3277, 4, "WitchwingRoguefeather_OnDied")