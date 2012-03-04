--[[ Stonetalon Mountains -- Deepmoss Venomspitter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DeepmossVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("DeepmossVenomspitter_ToxicSpit", 10000, 0)
end

function DeepmossVenomspitter_ToxicSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7951, pUnit:GetMainTank()) 
end

function DeepmossVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4007, 1, "DeepmossVenomspitter_OnCombat")
RegisterUnitEvent(4007, 2, "DeepmossVenomspitter_OnLeaveCombat")
RegisterUnitEvent(4007, 3, "DeepmossVenomspitter_OnKilledTarget")
RegisterUnitEvent(4007, 4, "DeepmossVenomspitter_OnDied")