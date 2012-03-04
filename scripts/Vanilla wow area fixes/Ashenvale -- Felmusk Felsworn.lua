--[[ Ashenvale -- Felmusk Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskFelsworn_OverwhelmingStench", 10000, 0)
end

function FelmuskFelsworn_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3762, 1, "FelmuskFelsworn_OnCombat")
RegisterUnitEvent(3762, 2, "FelmuskFelsworn_OnLeaveCombat")
RegisterUnitEvent(3762, 3, "FelmuskFelsworn_OnKilledTarget")
RegisterUnitEvent(3762, 4, "FelmuskFelsworn_OnDied")