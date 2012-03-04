--[[ Grizzly Hills -- Sergeant Bonesnap.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SergeantBonesnap_OnCombat(Unit, Event)
Unit:RegisterEvent("SergeantBonesnap_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("SergeantBonesnap_HeroicStrike", 5000, 0)
Unit:RegisterEvent("SergeantBonesnap_Intercept", 9000, 0)
end

function SergeantBonesnap_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SergeantBonesnap_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function SergeantBonesnap_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function SergeantBonesnap_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SergeantBonesnap_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SergeantBonesnap_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27493, 1, "SergeantBonesnap_OnCombat")
RegisterUnitEvent(27493, 2, "SergeantBonesnap_OnLeaveCombat")
RegisterUnitEvent(27493, 3, "SergeantBonesnap_OnKilledTarget")
RegisterUnitEvent(27493, 4, "SergeantBonesnap_OnDied")