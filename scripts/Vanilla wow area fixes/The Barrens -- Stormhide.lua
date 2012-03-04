--[[ The Barrens -- Stormhide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Stormhide_OnCombat(Unit, Event)
Unit:RegisterEvent("Stormhide_LizardBolt", 6000, 0)
end

function Stormhide_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Stormhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stormhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stormhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3238, 1, "Stormhide_OnCombat")
RegisterUnitEvent(3238, 2, "Stormhide_OnLeaveCombat")
RegisterUnitEvent(3238, 3, "Stormhide_OnKilledTarget")
RegisterUnitEvent(3238, 4, "Stormhide_OnDied")