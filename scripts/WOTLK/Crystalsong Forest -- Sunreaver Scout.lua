--[[ Crystalsong Forest -- Sunreaver Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SunreaverScout_OnCombat(Unit, Event)
Unit:RegisterEvent("SunreaverScout_MultiShot", 8000, 0)
Unit:RegisterEvent("SunreaverScout_Shoot", 6000, 0)
end

function SunreaverScout_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SunreaverScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunreaverScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunreaverScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunreaverScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30233, 1, "SunreaverScout_OnCombat")
RegisterUnitEvent(30233, 2, "SunreaverScout_OnLeaveCombat")
RegisterUnitEvent(30233, 3, "SunreaverScout_OnKilledTarget")
RegisterUnitEvent(30233, 4, "SunreaverScout_OnDied")