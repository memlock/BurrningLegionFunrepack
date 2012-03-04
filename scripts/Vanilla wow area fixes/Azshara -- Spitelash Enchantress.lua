--[[ Azshara -- Spitelash Enchantress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SpitelashEnchantress_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashEnchantress_EnchantedQuickness", 10000, 0)
Unit:RegisterEvent("SpitelashEnchantress_FrostShock", 6000, 0)
end

function SpitelashEnchantress_EnchantedQuickness(pUnit, Event) 
pUnit:CastSpell(3443) 
end

function SpitelashEnchantress_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SpitelashEnchantress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashEnchantress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashEnchantress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7186, 1, "SpitelashEnchantress_OnCombat")
RegisterUnitEvent(7186, 2, "SpitelashEnchantress_OnLeaveCombat")
RegisterUnitEvent(7186, 3, "SpitelashEnchantress_OnKilledTarget")
RegisterUnitEvent(7186, 4, "SpitelashEnchantress_OnDied")