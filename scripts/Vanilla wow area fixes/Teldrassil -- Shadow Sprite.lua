--[[ Teldrassil -- Shadow Sprite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ShadowSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadowSprite_ShadowBolt", 8000, 0)
end

function ShadowSprite_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function ShadowSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadowSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadowSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2003, 1, "ShadowSprite_OnCombat")
RegisterUnitEvent(2003, 2, "ShadowSprite_OnLeaveCombat")
RegisterUnitEvent(2003, 3, "ShadowSprite_OnKilledTarget")
RegisterUnitEvent(2003, 4, "ShadowSprite_OnDied")