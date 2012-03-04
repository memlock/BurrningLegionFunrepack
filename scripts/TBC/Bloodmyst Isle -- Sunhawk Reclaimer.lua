--[[ Bloodmyst Isle -- Sunhawk Reclaimer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkReclaimer_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkReclaimer_Fireball", 8000, 0)
Unit:RegisterEvent("SunhawkReclaimer_FrostArmor", 2000, 1)
Unit:RegisterEvent("SunhawkReclaimer_MarkoftheSunhawk", 7500, 0)
end

function SunhawkReclaimer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function SunhawkReclaimer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function SunhawkReclaimer_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkReclaimer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkReclaimer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkReclaimer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17606, 1, "SunhawkReclaimer_OnCombat")
RegisterUnitEvent(17606, 2, "SunhawkReclaimer_OnLeaveCombat")
RegisterUnitEvent(17606, 3, "SunhawkReclaimer_OnKilledTarget")
RegisterUnitEvent(17606, 4, "SunhawkReclaimer_OnDied")