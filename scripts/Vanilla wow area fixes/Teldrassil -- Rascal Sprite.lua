--[[ Teldrassil -- Rascal Sprite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function RascalSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("RascalSprite_FaerieFire", 1000, 1)
end

function RascalSprite_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RascalSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RascalSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RascalSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2002, 1, "RascalSprite_OnCombat")
RegisterUnitEvent(2002, 2, "RascalSprite_OnLeaveCombat")
RegisterUnitEvent(2002, 3, "RascalSprite_OnKilledTarget")
RegisterUnitEvent(2002, 4, "RascalSprite_OnDied")