--[[ Azuremyst Isle -- Hauteur.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function Hauteur_OnCombat(Unit, Event)
Unit:RegisterEvent("Hauteur_FireShield", 2000, 1)
Unit:RegisterEvent("Hauteur_FlameShock", 6000, 0)
end

function Hauteur_FireShield(pUnit, Event) 
pUnit:CastSpell(134) 
end

function Hauteur_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8050, pUnit:GetMainTank()) 
end

function Hauteur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Hauteur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Hauteur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17206, 1, "Hauteur_OnCombat")
RegisterUnitEvent(17206, 2, "Hauteur_OnLeaveCombat")
RegisterUnitEvent(17206, 3, "Hauteur_OnKilledTarget")
RegisterUnitEvent(17206, 4, "Hauteur_OnDied")