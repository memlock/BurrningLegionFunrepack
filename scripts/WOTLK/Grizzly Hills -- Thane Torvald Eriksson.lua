--[[ Grizzly Hills -- Thane Torvald Eriksson.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function ThaneTorvaldEriksson_OnCombat(Unit, Event)
Unit:RegisterEvent("ThaneTorvaldEriksson_ArcaneShot", 7000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_MultiShot", 10000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_Shoot", 6000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_TorvaldsDeterrence", 11000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_Volley", 13000, 0)
end

function ThaneTorvaldEriksson_ArcaneShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34829, pUnit:GetMainTank()) 
end

function ThaneTorvaldEriksson_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52813, pUnit:GetMainTank()) 
end

function ThaneTorvaldEriksson_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50512, pUnit:GetMainTank()) 
end

function ThaneTorvaldEriksson_TorvaldsDeterrence(pUnit, Event) 
pUnit:CastSpell(57057) 
end

function ThaneTorvaldEriksson_Volley(pUnit, Event) 
pUnit:CastSpell(56843) 
end

function ThaneTorvaldEriksson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThaneTorvaldEriksson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThaneTorvaldEriksson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27377, 1, "ThaneTorvaldEriksson_OnCombat")
RegisterUnitEvent(27377, 2, "ThaneTorvaldEriksson_OnLeaveCombat")
RegisterUnitEvent(27377, 3, "ThaneTorvaldEriksson_OnKilledTarget")
RegisterUnitEvent(27377, 4, "ThaneTorvaldEriksson_OnDied")