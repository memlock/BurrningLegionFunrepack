--[[ Durotar -- Lieutenant Benedict.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function LieutenantBenedict_OnCombat(Unit, Event)
Unit:RegisterEvent("LieutenantBenedict_DefensiveStance", 1000, 1)
Unit:RegisterEvent("LieutenantBenedict_ImprovedBlocking", 6000, 0)
Unit:RegisterEvent("LieutenantBenedict_ShieldBash", 8000, 0)
end

function LieutenantBenedict_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function LieutenantBenedict_ImprovedBlocking(pUnit, Event) 
pUnit:CastSpell(3248) 
end

function LieutenantBenedict_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function LieutenantBenedict_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LieutenantBenedict_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LieutenantBenedict_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3192, 1, "LieutenantBenedict_OnCombat")
RegisterUnitEvent(3192, 2, "LieutenantBenedict_OnLeaveCombat")
RegisterUnitEvent(3192, 3, "LieutenantBenedict_OnKilledTarget")
RegisterUnitEvent(3192, 4, "LieutenantBenedict_OnDied")