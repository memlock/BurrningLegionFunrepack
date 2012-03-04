--[[ Ashenvale -- Wrathtail Priestess.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailPriestess_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailPriestess_Heal", 13000, 0)
Unit:RegisterEvent("WrathtailPriestess_Sleep", 15000, 0)
end

function WrathtailPriestess_Heal(pUnit, Event) 
pUnit:CastSpell(11642) 
end

function WrathtailPriestess_Sleep(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15970, pUnit:GetMainTank()) 
end

function WrathtailPriestess_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailPriestess_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailPriestess_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3944, 1, "WrathtailPriestess_OnCombat")
RegisterUnitEvent(3944, 2, "WrathtailPriestess_OnLeaveCombat")
RegisterUnitEvent(3944, 3, "WrathtailPriestess_OnKilledTarget")
RegisterUnitEvent(3944, 4, "WrathtailPriestess_OnDied")