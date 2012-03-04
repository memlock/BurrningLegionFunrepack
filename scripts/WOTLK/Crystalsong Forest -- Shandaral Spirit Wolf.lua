--[[ Crystalsong Forest -- Shandaral Spirit Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ShandaralSpiritWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralSpiritWolf_TendonRip", 8000, 0)
end

function ShandaralSpiritWolf_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function ShandaralSpiritWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralSpiritWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralSpiritWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31123, 1, "ShandaralSpiritWolf_OnCombat")
RegisterUnitEvent(31123, 2, "ShandaralSpiritWolf_OnLeaveCombat")
RegisterUnitEvent(31123, 3, "ShandaralSpiritWolf_OnKilledTarget")
RegisterUnitEvent(31123, 4, "ShandaralSpiritWolf_OnDied")