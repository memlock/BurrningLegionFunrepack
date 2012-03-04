--[[ Durotar -- Captain Flat Tusk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CaptainFlatTusk_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainFlatTusk_HeroicStrike", 5000, 0)
end

function CaptainFlatTusk_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function CaptainFlatTusk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainFlatTusk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainFlatTusk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5824, 1, "CaptainFlatTusk_OnCombat")
RegisterUnitEvent(5824, 2, "CaptainFlatTusk_OnLeaveCombat")
RegisterUnitEvent(5824, 3, "CaptainFlatTusk_OnKilledTarget")
RegisterUnitEvent(5824, 4, "CaptainFlatTusk_OnDied")