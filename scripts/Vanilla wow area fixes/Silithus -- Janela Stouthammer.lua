--[[ Silithus -- Janela Stouthammer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function JanelaStouthammer_OnCombat(Unit, Event)
Unit:RegisterEvent("JanelaStouthammer_CrusaderStrike", 8000, 0)
Unit:RegisterEvent("JanelaStouthammer_HolyLight", 12000, 0)
end

function JanelaStouthammer_CrusaderStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14518, pUnit:GetMainTank()) 
end

function JanelaStouthammer_HolyLight(pUnit, Event) 
pUnit:CastSpell(25263) 
end

function JanelaStouthammer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JanelaStouthammer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JanelaStouthammer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15443, 1, "JanelaStouthammer_OnCombat")
RegisterUnitEvent(15443, 2, "JanelaStouthammer_OnLeaveCombat")
RegisterUnitEvent(15443, 3, "JanelaStouthammer_OnKilledTarget")
RegisterUnitEvent(15443, 4, "JanelaStouthammer_OnDied")