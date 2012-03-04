--[[ Crystalsong Forest -- Crystal Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CrystalWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystalWyrm_FrostBreath", 8000, 0)
end

function CrystalWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function CrystalWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystalWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystalWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31393, 1, "CrystalWyrm_OnCombat")
RegisterUnitEvent(31393, 2, "CrystalWyrm_OnLeaveCombat")
RegisterUnitEvent(31393, 3, "CrystalWyrm_OnKilledTarget")
RegisterUnitEvent(31393, 4, "CrystalWyrm_OnDied")