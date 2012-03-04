--[[ Stonetalon Mountains -- Fey Dragon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function FeyDragon_OnCombat(Unit, Event)
Unit:RegisterEvent("FeyDragon_NullifyMana", 6000, 0)
end

function FeyDragon_NullifyMana(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7994, pUnit:GetRandomPlayer(4)) 
end

function FeyDragon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FeyDragon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FeyDragon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4016, 1, "FeyDragon_OnCombat")
RegisterUnitEvent(4016, 2, "FeyDragon_OnLeaveCombat")
RegisterUnitEvent(4016, 3, "FeyDragon_OnKilledTarget")
RegisterUnitEvent(4016, 4, "FeyDragon_OnDied")