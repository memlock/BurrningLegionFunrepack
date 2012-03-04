--[[ Bloodmyst Isle -- Sunhawk Spy.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkSpy_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkSpy_DemoralizingShout", 2000, 0)
Unit:RegisterEvent("SunhawkSpy_HeroicStrike", 6000, 0)
Unit:RegisterEvent("SunhawkSpy_MarkoftheSunhawk", 7500, 0)
end

function SunhawkSpy_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SunhawkSpy_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31827, pUnit:GetMainTank()) 
end

function SunhawkSpy_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkSpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkSpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkSpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17604, 1, "SunhawkSpy_OnCombat")
RegisterUnitEvent(17604, 2, "SunhawkSpy_OnLeaveCombat")
RegisterUnitEvent(17604, 3, "SunhawkSpy_OnKilledTarget")
RegisterUnitEvent(17604, 4, "SunhawkSpy_OnDied")