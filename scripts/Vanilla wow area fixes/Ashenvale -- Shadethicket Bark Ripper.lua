--[[ Ashenvale -- Shadethicket Bark Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadethicketBarkRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketBarkRipper_TendonRip", 8000, 0)
end

function ShadethicketBarkRipper_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function ShadethicketBarkRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketBarkRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketBarkRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3784, 1, "ShadethicketBarkRipper_OnCombat")
RegisterUnitEvent(3784, 2, "ShadethicketBarkRipper_OnLeaveCombat")
RegisterUnitEvent(3784, 3, "ShadethicketBarkRipper_OnKilledTarget")
RegisterUnitEvent(3784, 4, "ShadethicketBarkRipper_OnDied")