--[[ Stonetalon Mountains -- Rogue Flame Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function RogueFlameSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("RogueFlameSpirit_Inmolate", 10000, 0)
end

function RogueFlameSpirit_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function RogueFlameSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RogueFlameSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RogueFlameSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4036, 1, "RogueFlameSpirit_OnCombat")
RegisterUnitEvent(4036, 2, "RogueFlameSpirit_OnLeaveCombat")
RegisterUnitEvent(4036, 3, "RogueFlameSpirit_OnKilledTarget")
RegisterUnitEvent(4036, 4, "RogueFlameSpirit_OnDied")