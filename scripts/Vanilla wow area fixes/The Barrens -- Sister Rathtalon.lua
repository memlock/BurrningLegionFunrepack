--[[ The Barrens -- Sister Rathtalon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SisterRathtalon_OnCombat(Unit, Event)
Unit:RegisterEvent("SisterRathtalon_EnvelopingWinds", 10000, 0)
Unit:RegisterEvent("SisterRathtalon_GustofWind", 14000, 0)
Unit:RegisterEvent("SisterRathtalon_LightningCloud", 3000, 1)
end

function SisterRathtalon_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function SisterRathtalon_GustofWind(pUnit, Event) 
pUnit:CastSpell(6982) 
end

function SisterRathtalon_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function SisterRathtalon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SisterRathtalon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SisterRathtalon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5830, 1, "SisterRathtalon_OnCombat")
RegisterUnitEvent(5830, 2, "SisterRathtalon_OnLeaveCombat")
RegisterUnitEvent(5830, 3, "SisterRathtalon_OnKilledTarget")
RegisterUnitEvent(5830, 4, "SisterRathtalon_OnDied")