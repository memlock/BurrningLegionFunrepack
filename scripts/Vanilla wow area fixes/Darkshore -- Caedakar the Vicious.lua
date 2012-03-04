--[[ Darkshore -- Caedakar the Vicious.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function CaedakartheVicious_OnCombat(Unit, Event)
Unit:RegisterEvent("CaedakartheVicious_HealingWave", 13000, 0)
Unit:RegisterEvent("CaedakartheVicious_LightningBolt", 8000, 0)
Unit:RegisterEvent("CaedakartheVicious_LightningShield", 5000, 0)
end

function CaedakartheVicious_HealingWave(pUnit, Event) 
pUnit:CastSpell(913) 
end

function CaedakartheVicious_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function CaedakartheVicious_LightningShield(pUnit, Event) 
pUnit:CastSpell(905) 
end

function CaedakartheVicious_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaedakartheVicious_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaedakartheVicious_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3900, 1, "CaedakartheVicious_OnCombat")
RegisterUnitEvent(3900, 2, "CaedakartheVicious_OnLeaveCombat")
RegisterUnitEvent(3900, 3, "CaedakartheVicious_OnKilledTarget")
RegisterUnitEvent(3900, 4, "CaedakartheVicious_OnDied")