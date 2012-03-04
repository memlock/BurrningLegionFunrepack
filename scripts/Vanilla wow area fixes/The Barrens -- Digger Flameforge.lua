--[[ The Barrens -- Digger Flameforge.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function DiggerFlameforge_OnCombat(Unit, Event)
Unit:RegisterEvent("DiggerFlameforge_Backhand", 8000, 0)
Unit:RegisterEvent("DiggerFlameforge_ThrowDynamite", 12000, 0)
end

function DiggerFlameforge_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function DiggerFlameforge_ThrowDynamite(pUnit, Event) 
pUnit:CastSpell(7978) 
end

function DiggerFlameforge_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DiggerFlameforge_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DiggerFlameforge_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5849, 1, "DiggerFlameforge_OnCombat")
RegisterUnitEvent(5849, 2, "DiggerFlameforge_OnLeaveCombat")
RegisterUnitEvent(5849, 3, "DiggerFlameforge_OnKilledTarget")
RegisterUnitEvent(5849, 4, "DiggerFlameforge_OnDied")