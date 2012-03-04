--[[ Grizzly Hills -- Warlord Zimbo.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WarlordZimbo_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordZimbo_SkullCrack", 8000, 0)
Unit:RegisterEvent("WarlordZimbo_WarlordRoar", 2000, 1)
end

function WarlordZimbo_SkullCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3551, pUnit:GetMainTank()) 
end

function WarlordZimbo_WarlordRoar(pUnit, Event) 
pUnit:CastSpell(52283) 
end

function WarlordZimbo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordZimbo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordZimbo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26544, 1, "WarlordZimbo_OnCombat")
RegisterUnitEvent(26544, 2, "WarlordZimbo_OnLeaveCombat")
RegisterUnitEvent(26544, 3, "WarlordZimbo_OnKilledTarget")
RegisterUnitEvent(26544, 4, "WarlordZimbo_OnDied")