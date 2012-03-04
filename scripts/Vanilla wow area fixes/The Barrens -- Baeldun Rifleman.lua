--[[ The Barrens -- Baeldun Rifleman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunRifleman_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunRifleman_Shoot", 6000, 0)
end

function BaeldunRifleman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BaeldunRifleman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunRifleman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunRifleman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3377, 1, "BaeldunRifleman_OnCombat")
RegisterUnitEvent(3377, 2, "BaeldunRifleman_OnLeaveCombat")
RegisterUnitEvent(3377, 3, "BaeldunRifleman_OnKilledTarget")
RegisterUnitEvent(3377, 4, "BaeldunRifleman_OnDied")