--[[ Stonetalon Mountains -- Naltaszar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function Naltaszar_OnCombat(Unit, Event)
Unit:RegisterEvent("Naltaszar_ChainBurn", 10000, 0)
Unit:RegisterEvent("Naltaszar_ChainLightning", 6000, 0)
end

function Naltaszar_ChainBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8211, pUnit:GetRandomPlayer(4)) 
end

function Naltaszar_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15305, pUnit:GetMainTank()) 
end

function Naltaszar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Naltaszar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Naltaszar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4066, 1, "Naltaszar_OnCombat")
RegisterUnitEvent(4066, 2, "Naltaszar_OnLeaveCombat")
RegisterUnitEvent(4066, 3, "Naltaszar_OnKilledTarget")
RegisterUnitEvent(4066, 4, "Naltaszar_OnDied")