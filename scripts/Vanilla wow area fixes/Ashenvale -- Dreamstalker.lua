--[[ Ashenvale -- Dreamstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Dreamstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Dreamstalker_CorrosiveAcidBreath", 6000, 0)
Unit:RegisterEvent("Dreamstalker_Sleep", 14000, 0)
end

function Dreamstalker_CorrosiveAcidBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20667, pUnit:GetMainTank()) 
end

function Dreamstalker_Sleep(pUnit, Event) 
pUnit:CastSpell(20669) 
end

function Dreamstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Dreamstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Dreamstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12498, 1, "Dreamstalker_OnCombat")
RegisterUnitEvent(12498, 2, "Dreamstalker_OnLeaveCombat")
RegisterUnitEvent(12498, 3, "Dreamstalker_OnKilledTarget")
RegisterUnitEvent(12498, 4, "Dreamstalker_OnDied")