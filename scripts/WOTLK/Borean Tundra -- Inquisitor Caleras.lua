--[[ Borean Tundra -- Inquisitor Caleras.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InquisitorCaleras_OnCombat(Unit, Event)
Unit:RegisterEvent("InquisitorCaleras_FrostNova", 10000, 0)
Unit:RegisterEvent("InquisitorCaleras_Frostbolt", 8000, 0)
end

function InquisitorCaleras_FrostNova(pUnit, Event) 
pUnit:CastSpell(32192) 
end

function InquisitorCaleras_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15043, pUnit:GetMainTank()) 
end

function InquisitorCaleras_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InquisitorCaleras_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InquisitorCaleras_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25720, 1, "InquisitorCaleras_OnCombat")
RegisterUnitEvent(25720, 2, "InquisitorCaleras_OnLeaveCombat")
RegisterUnitEvent(25720, 3, "InquisitorCaleras_OnKilledTarget")
RegisterUnitEvent(25720, 4, "InquisitorCaleras_OnDied")