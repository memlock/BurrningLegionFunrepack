--[[ Silithus -- Mistress Natalia Mar'alith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function MistressNataliaMaralith_OnCombat(Unit, Event)
Unit:RegisterEvent("MistressNataliaMaralith_Blackout", 9000, 0)
Unit:RegisterEvent("MistressNataliaMaralith_GreaterHeal", 15000, 0)
Unit:RegisterEvent("MistressNataliaMaralith_MindFlay", 7000, 0)
Unit:RegisterEvent("MistressNataliaMaralith_PsychicScream", 16000, 0)
Unit:RegisterEvent("MistressNataliaMaralith_ShadowWordPain", 2000, 2)
end

function MistressNataliaMaralith_Blackout(pUnit, Event) 
pUnit:FullCastSpellOnTarget(44415, pUnit:GetMainTank()) 
end

function MistressNataliaMaralith_GreaterHeal(pUnit, Event) 
pUnit:CastSpell(35096) 
end

function MistressNataliaMaralith_MindFlay(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16568, pUnit:GetRandomPlayer(0)) 
end

function MistressNataliaMaralith_PsychicScream(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13704, pUnit:GetRandomPlayer(0)) 
end

function MistressNataliaMaralith_ShadowWordPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11639, pUnit:GetMainTank()) 
end

function MistressNataliaMaralith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistressNataliaMaralith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistressNataliaMaralith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15215, 1, "MistressNataliaMaralith_OnCombat")
RegisterUnitEvent(15215, 2, "MistressNataliaMaralith_OnLeaveCombat")
RegisterUnitEvent(15215, 3, "MistressNataliaMaralith_OnKilledTarget")
RegisterUnitEvent(15215, 4, "MistressNataliaMaralith_OnDied")