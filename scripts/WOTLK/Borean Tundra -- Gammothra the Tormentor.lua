--[[ Borean Tundra -- Gammothra the Tormentor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GammothratheTormentor_OnCombat(Unit, Event)
Unit:RegisterEvent("GammothratheTormentor_MagnataurCharge", 10000, 0)
Unit:RegisterEvent("GammothratheTormentor_TuskStrike", 8000, 0)
end

function GammothratheTormentor_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function GammothratheTormentor_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function GammothratheTormentor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GammothratheTormentor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GammothratheTormentor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25789, 1, "GammothratheTormentor_OnCombat")
RegisterUnitEvent(25789, 2, "GammothratheTormentor_OnLeaveCombat")
RegisterUnitEvent(25789, 3, "GammothratheTormentor_OnKilledTarget")
RegisterUnitEvent(25789, 4, "GammothratheTormentor_OnDied")