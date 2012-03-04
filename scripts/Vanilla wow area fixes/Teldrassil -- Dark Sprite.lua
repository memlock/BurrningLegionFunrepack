--[[ Teldrassil -- Dark Sprite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkSprite_DarkenVision", 8000, 0)
end

function DarkSprite_DarkenVision(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5514, pUnit:GetMainTank()) 
end

function DarkSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2004, 1, "DarkSprite_OnCombat")
RegisterUnitEvent(2004, 2, "DarkSprite_OnLeaveCombat")
RegisterUnitEvent(2004, 3, "DarkSprite_OnKilledTarget")
RegisterUnitEvent(2004, 4, "DarkSprite_OnDied")