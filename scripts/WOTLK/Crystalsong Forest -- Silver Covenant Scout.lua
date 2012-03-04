--[[ Crystalsong Forest -- Silver Covenant Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SilverCovenantScout_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverCovenantScout_MultiShot", 8000, 0)
Unit:RegisterEvent("SilverCovenantScout_Shoot", 6000, 0)
end

function SilverCovenantScout_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SilverCovenantScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverCovenantScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverCovenantScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverCovenantScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30238, 1, "SilverCovenantScout_OnCombat")
RegisterUnitEvent(30238, 2, "SilverCovenantScout_OnLeaveCombat")
RegisterUnitEvent(30238, 3, "SilverCovenantScout_OnKilledTarget")
RegisterUnitEvent(30238, 4, "SilverCovenantScout_OnDied")