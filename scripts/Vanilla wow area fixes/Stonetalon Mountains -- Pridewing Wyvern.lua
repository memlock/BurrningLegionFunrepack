--[[ Stonetalon Mountains -- Pridewing Wyvern.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function PridewingWyvern_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingWyvern_CorrosivePoison", 10000, 0)
end

function PridewingWyvern_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function PridewingWyvern_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingWyvern_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingWyvern_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4012, 1, "PridewingWyvern_OnCombat")
RegisterUnitEvent(4012, 2, "PridewingWyvern_OnLeaveCombat")
RegisterUnitEvent(4012, 3, "PridewingWyvern_OnKilledTarget")
RegisterUnitEvent(4012, 4, "PridewingWyvern_OnDied")