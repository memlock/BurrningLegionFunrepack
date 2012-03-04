--[[ Ashenvale -- Ruuzel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Ruuzel_OnCombat(Unit, Event)
Unit:RegisterEvent("Ruuzel_HeroicStrike", 6000, 0)
end

function Ruuzel_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25712, pUnit:GetMainTank()) 
end

function Ruuzel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ruuzel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ruuzel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3943, 1, "Ruuzel_OnCombat")
RegisterUnitEvent(3943, 2, "Ruuzel_OnLeaveCombat")
RegisterUnitEvent(3943, 3, "Ruuzel_OnKilledTarget")
RegisterUnitEvent(3943, 4, "Ruuzel_OnDied")