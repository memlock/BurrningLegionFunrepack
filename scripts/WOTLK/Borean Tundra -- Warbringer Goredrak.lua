--[[ Borean Tundra -- Warbringer Goredrak.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WarbringerGoredrak_OnCombat(Unit, Event)
Unit:RegisterEvent("WarbringerGoredrak_ArcaneBlast", 8000, 0)
Unit:RegisterEvent("WarbringerGoredrak_PowerSap", 10000, 0)
end

function WarbringerGoredrak_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50545, pUnit:GetMainTank()) 
end

function WarbringerGoredrak_PowerSap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50534, pUnit:GetMainTank()) 
end

function WarbringerGoredrak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarbringerGoredrak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarbringerGoredrak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25712, 1, "WarbringerGoredrak_OnCombat")
RegisterUnitEvent(25712, 2, "WarbringerGoredrak_OnLeaveCombat")
RegisterUnitEvent(25712, 3, "WarbringerGoredrak_OnKilledTarget")
RegisterUnitEvent(25712, 4, "WarbringerGoredrak_OnDied")