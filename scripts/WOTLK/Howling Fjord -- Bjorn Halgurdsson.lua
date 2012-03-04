--[[ Howling Fjord -- Bjorn Halgurdsson.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BjornHalgurdsson_OnCombat(Unit, Event)
Unit:RegisterEvent("BjornHalgurdsson_CrushArmor", 5000, 0)
Unit:RegisterEvent("BjornHalgurdsson_MortalStrike", 7000, 0)
end

function BjornHalgurdsson_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33661, pUnit:GetMainTank()) 
end

function BjornHalgurdsson_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function BjornHalgurdsson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BjornHalgurdsson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BjornHalgurdsson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24238, 1, "BjornHalgurdsson_OnCombat")
RegisterUnitEvent(24238, 2, "BjornHalgurdsson_OnLeaveCombat")
RegisterUnitEvent(24238, 3, "BjornHalgurdsson_OnKilledTarget")
RegisterUnitEvent(24238, 4, "BjornHalgurdsson_OnDied")