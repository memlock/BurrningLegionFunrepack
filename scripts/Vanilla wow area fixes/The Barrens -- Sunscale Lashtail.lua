--[[ The Barrens -- Sunscale Lashtail.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SunscaleLashtail_OnCombat(Unit, Event)
Unit:RegisterEvent("SunscaleLashtail_Lash", 6000, 0)
end

function SunscaleLashtail_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function SunscaleLashtail_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunscaleLashtail_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunscaleLashtail_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3254, 1, "SunscaleLashtail_OnCombat")
RegisterUnitEvent(3254, 2, "SunscaleLashtail_OnLeaveCombat")
RegisterUnitEvent(3254, 3, "SunscaleLashtail_OnKilledTarget")
RegisterUnitEvent(3254, 4, "SunscaleLashtail_OnDied")