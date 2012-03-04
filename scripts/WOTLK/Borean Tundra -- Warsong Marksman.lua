--[[ Borean Tundra -- Warsong Marksman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WarsongMarksman_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongMarksman_Enrage", 8000, 0)
Unit:RegisterEvent("WarsongMarksman_Shoot", 6000, 0)
end

function WarsongMarksman_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function WarsongMarksman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45578, pUnit:GetMainTank()) 
end

function WarsongMarksman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongMarksman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongMarksman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25244, 1, "WarsongMarksman_OnCombat")
RegisterUnitEvent(25244, 2, "WarsongMarksman_OnLeaveCombat")
RegisterUnitEvent(25244, 3, "WarsongMarksman_OnKilledTarget")
RegisterUnitEvent(25244, 4, "WarsongMarksman_OnDied")