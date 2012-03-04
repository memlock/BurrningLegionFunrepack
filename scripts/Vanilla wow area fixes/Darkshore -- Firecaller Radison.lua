--[[ Darkshore -- Firecaller Radison.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function FirecallerRadison_OnCombat(Unit, Event)
Unit:RegisterEvent("FirecallerRadison_Crazed", 2000, 1)
Unit:RegisterEvent("FirecallerRadison_FireNova", 7000, 0)
Unit:RegisterEvent("FirecallerRadison_Fireball", 8000, 0)
end

function FirecallerRadison_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function FirecallerRadison_FireNova(pUnit, Event) 
pUnit:CastSpell(11969) 
end

function FirecallerRadison_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function FirecallerRadison_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FirecallerRadison_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FirecallerRadison_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2192, 1, "FirecallerRadison_OnCombat")
RegisterUnitEvent(2192, 2, "FirecallerRadison_OnLeaveCombat")
RegisterUnitEvent(2192, 3, "FirecallerRadison_OnKilledTarget")
RegisterUnitEvent(2192, 4, "FirecallerRadison_OnDied")