--[[ Silithus -- Twilight Prophet.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightProphet_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightProphet_ChainLightning", 10000, 0)
Unit:RegisterEvent("TwilightProphet_FireNova", 4000, 0)
Unit:RegisterEvent("TwilightProphet_FrostNova", 8000, 0)
Unit:RegisterEvent("TwilightProphet_PsychicScream", 12000, 0)
end

function TwilightProphet_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15308, pUnit:GetMainTank()) 
end

function TwilightProphet_FireNova(pUnit, Event) 
pUnit:CastSpell(17366) 
end

function TwilightProphet_FrostNova(pUnit, Event) 
pUnit:CastSpell(15531) 
end

function TwilightProphet_PsychicScream(pUnit, Event) 
pUnit:CastSpell(22884) 
end

function TwilightProphet_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightProphet_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightProphet_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15308, 1, "TwilightProphet_OnCombat")
RegisterUnitEvent(15308, 2, "TwilightProphet_OnLeaveCombat")
RegisterUnitEvent(15308, 3, "TwilightProphet_OnKilledTarget")
RegisterUnitEvent(15308, 4, "TwilightProphet_OnDied")