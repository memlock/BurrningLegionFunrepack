--[[ Crystalsong Forest -- Silver Covenant Horseman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SilverCovenantHorseman_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverCovenantHorseman_MultiShot", 8000, 0)
Unit:RegisterEvent("SilverCovenantHorseman_Shoot", 6000, 0)
end

function SilverCovenantHorseman_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SilverCovenantHorseman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverCovenantHorseman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverCovenantHorseman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverCovenantHorseman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30263, 1, "SilverCovenantHorseman_OnCombat")
RegisterUnitEvent(30263, 2, "SilverCovenantHorseman_OnLeaveCombat")
RegisterUnitEvent(30263, 3, "SilverCovenantHorseman_OnKilledTarget")
RegisterUnitEvent(30263, 4, "SilverCovenantHorseman_OnDied")