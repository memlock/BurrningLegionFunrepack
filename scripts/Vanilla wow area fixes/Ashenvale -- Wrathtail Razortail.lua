--[[ Ashenvale -- Wrathtail Razortail.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailRazortail_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailRazortail_PierceArmor", 10000, 0)
Unit:RegisterEvent("WrathtailRazortail_Thorns", 2000, 2)
end

function WrathtailRazortail_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function WrathtailRazortail_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function WrathtailRazortail_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailRazortail_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailRazortail_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3712, 1, "WrathtailRazortail_OnCombat")
RegisterUnitEvent(3712, 2, "WrathtailRazortail_OnLeaveCombat")
RegisterUnitEvent(3712, 3, "WrathtailRazortail_OnKilledTarget")
RegisterUnitEvent(3712, 4, "WrathtailRazortail_OnDied")