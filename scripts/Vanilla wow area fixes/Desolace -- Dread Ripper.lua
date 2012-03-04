--[[ Desolace -- Dread Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DreadRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadRipper_RendFlesh", 8000, 0)
end

function DreadRipper_RendFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3147, pUnit:GetMainTank()) 
end

function DreadRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4694, 1, "DreadRipper_OnCombat")
RegisterUnitEvent(4694, 2, "DreadRipper_OnLeaveCombat")
RegisterUnitEvent(4694, 3, "DreadRipper_OnKilledTarget")
RegisterUnitEvent(4694, 4, "DreadRipper_OnDied")