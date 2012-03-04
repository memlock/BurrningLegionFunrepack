--[[ The Barrens -- Sunscale Scytheclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SunscaleScytheclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("SunscaleScytheclaw_Thrash", 6000, 0)
end

function SunscaleScytheclaw_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function SunscaleScytheclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunscaleScytheclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunscaleScytheclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3256, 1, "SunscaleScytheclaw_OnCombat")
RegisterUnitEvent(3256, 2, "SunscaleScytheclaw_OnLeaveCombat")
RegisterUnitEvent(3256, 3, "SunscaleScytheclaw_OnKilledTarget")
RegisterUnitEvent(3256, 4, "SunscaleScytheclaw_OnDied")