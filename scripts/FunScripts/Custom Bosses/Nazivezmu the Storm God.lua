---------------------------------------------------------------------------
--Scripted boss Nazivezmu for Hunt Event
--Scripted for this repack(BurrningLegion)
--By Avatar
---------------------------------------------------------------------------
function Nazivezmu_OnCombat(Unit, Event) 
Unit:SendChatMessage(14, 0, "YOU DARE TO CHALANGE ME MORTALS??")
Unit:RegisterEvent("Nazivezmu_Phase1", 1000, 0)
end

function Nazivezmu_Phase1(Unit, Event)
if (Unit:GetHealthPct() <= 90) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Electric shock for your pathetic body!")
Unit:RegisterEvent("Nazivezmu_ChainofLighting", 10000, 5)
Unit:RegisterEvent("Nazivezmu_LightingCharge", 10000, 5)
Unit:RegisterEvent("Nazivezmu_Phase2", 1000, 0)
end
end

function Nazivezmu_Phase2(Unit, Event)
if (Unit:GetHealthPct() <= 75) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Darkness will SWALLOW YOU!!")
Unit:RegisterEvent("Nazivezmu_BlackHole", 15000, 3)
Unit:RegisterEvent("Nazivezmu_Phase3", 1000, 0)
end
end

function Nazivezmu_Phase3(Unit, Event)
if (Unit:GetHealthPct() <= 50) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "I AM THE STORM GOD,YOU CANNOT DEFEAT ME!!")
Unit:RegisterEvent("Nazivezmu_QuantumStrike", 10000, 5)
Unit:RegisterEvent("Nazivezmu_Phase4", 1000, 0)
end
end

function Nazivezmu_Phase4(Unit, Event)
if (Unit:GetHealthPct() <= 25) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "SKIES OPEN!!THUNDER STRIKE!!")
Unit:RegisterEvent("Nazivezmu_BIGBANG", 20000, 3)
end
end

function Nazivezmu_ChainofLighting(pUnit, Event) 
pUnit:CastSpellOnTarget(64390, pUnit:GetRandomPlayer(5))
end

function Nazivezmu_LightingCharge(pUnit, Event) 
pUnit:CastSpellOnTarget(62466, pUnit:GetRandomPlayer(5))
end

function Nazivezmu_BlackHole(pUnit, Event)
Unit:RemoveEvents()  
pUnit:CastSpell(65108)
end

function Nazivezmu_QuantumStrike(pUnit, Event) 
pUnit:CastSpellOnTarget(64592, pUnit:GetRandomPlayer(5))
end

function Nazivezmu_BigBang(pUnit, Event)
Unit:RemoveEvents()  
pUnit:CastSpell(64443)
end

function Nazivezmu_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Nazivezmu_OnDied(Unit, Event) 
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "I will return,you cannot destroy me forever!!") 
end

function Nazivezmu_OnKilledTarget(Unit, Event) 
Unit:SendChatMessage(14, 0, "You will be my slave for eternity!!HAHAHA") 
end

RegisterUnitEvent(902864, 1, Nazivezmu_OnCombat)
RegisterUnitEvent(902864, 2, Nazivezmu_OnLeaveCombat)
RegisterUnitEvent(902864, 3, Nazivezmu_OnKilledTarget)
RegisterUnitEvent(902864, 4, Nazivezmu_OnDied)
