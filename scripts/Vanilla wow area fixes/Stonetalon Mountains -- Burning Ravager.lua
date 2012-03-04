--[[ Stonetalon Mountains -- Burning Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BurningRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningRavager_FireShieldII", 4000, 2)
end

function BurningRavager_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function BurningDestroyer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function BurningRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4037, 1, "BurningRavager_OnCombat")
RegisterUnitEvent(4037, 2, "BurningRavager_OnLeaveCombat")
RegisterUnitEvent(4037, 3, "BurningRavager_OnKilledTarget")
RegisterUnitEvent(4037, 4, "BurningRavager_OnDied")