--[[ Durotar -- Gazzuz.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function Gazzuz_OnCombat(Unit, Event)
Unit:RegisterEvent("Gazzuz_SummonVoidwalker", 1000, 1)
Unit:RegisterEvent("Gazzuz_DemonSkin", 2000, 1)
Unit:RegisterEvent("Gazzuz_Corruption", 4000, 1)
Unit:RegisterEvent("Gazzuz_ShadowBolt", 8000, 0)
end

function Gazzuz_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function Gazzuz_DemonSkin(pUnit, Event) 
pUnit:CastSpell(20798) 
end

function Gazzuz_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function Gazzuz_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function Gazzuz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gazzuz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gazzuz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3204, 1, "Gazzuz_OnCombat")
RegisterUnitEvent(3204, 2, "Gazzuz_OnLeaveCombat")
RegisterUnitEvent(3204, 3, "Gazzuz_OnKilledTarget")
RegisterUnitEvent(3204, 4, "Gazzuz_OnDied")