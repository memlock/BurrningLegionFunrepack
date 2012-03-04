--[[ Borean Tundra -- Skadir Runecaster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkadirRunecaster_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirRunecaster_LightningBolt", 8000, 0)
Unit:RegisterEvent("SkadirRunecaster_RuneofRetribution", 2000, 2)
end

function SkadirRunecaster_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function SkadirRunecaster_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(49871, pUnit:GetMainTank()) 
end

function SkadirRunecaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirRunecaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirRunecaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25520, 1, "SkadirRunecaster_OnCombat")
RegisterUnitEvent(25520, 2, "SkadirRunecaster_OnLeaveCombat")
RegisterUnitEvent(25520, 3, "SkadirRunecaster_OnKilledTarget")
RegisterUnitEvent(25520, 4, "SkadirRunecaster_OnDied")