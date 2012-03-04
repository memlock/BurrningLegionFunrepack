--[[ Ashenvale -- Xavian Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function XavianHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianHellcaller_Fireball", 8000, 0)
Unit:RegisterEvent("XavianHellcaller_GiftoftheXavian", 13000, 0)
end

function XavianHellcaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function XavianHellcaller_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3757, 1, "XavianHellcaller_OnCombat")
RegisterUnitEvent(3757, 2, "XavianHellcaller_OnLeaveCombat")
RegisterUnitEvent(3757, 3, "XavianHellcaller_OnKilledTarget")
RegisterUnitEvent(3757, 4, "XavianHellcaller_OnDied")