--[[ Stonetalon Mountains -- Corrosive SapBeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CorrosiveSapBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("CorrosiveSapBeast_CorrosivePoison", 10000, 0)
end

function CorrosiveSapBeast_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function CorrosiveSapBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorrosiveSapBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorrosiveSapBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4021, 1, "CorrosiveSapBeast_OnCombat")
RegisterUnitEvent(4021, 2, "CorrosiveSapBeast_OnLeaveCombat")
RegisterUnitEvent(4021, 3, "CorrosiveSapBeast_OnKilledTarget")
RegisterUnitEvent(4021, 4, "CorrosiveSapBeast_OnDied")