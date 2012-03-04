---------------------------------------------------------------------------
--Script for mob i made in alcz island tomb(wing of the cutom raid)
--Scripted for this repack 
--by Avatar
---------------------------------------------------------------------------
function Halary_OnCombat(Unit, Event) 
Unit:SendChatMessage(14, 0, "Your soul is mine!")
Unit:RegisterEvent("Halary_Phase1", 1000, 0)
end

function Halary_Phase1(Unit, Event)
if (Unit:GetHealthPct() <= 75) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "YOU DARE TO HURT ME?!!")
Unit:RegisterEvent("Halary_DeathChillBolt", 10000, 5)
Unit:RegisterEvent("Halary_Phase2", 1000, 0)
end
end

function Halary_Phase2(Unit, Event)
if (Unit:GetHealthPct() <= 45) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "I will destroy you mortal")
Unit:RegisterEvent("Halary_DeathandDecay", 20000, 3)
end
end

function Halary_DeathChillBolt(pUnit, Event) 
pUnit:CastSpellOnTarget(72005, pUnit:GetRandomPlayer(0))
end

function Halary_DeathandDecay(pUnit, Event)
Unit:RemoveEvents()  
pUnit:CastSpell(72108)
end

function _OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Halary_OnDied(Unit, Event) 
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "Avange me my dear!") 
end

function Halary_OnKilledTarget(Unit, Event) 
Unit:SendChatMessage(14, 0, "Darkness on your souls!") 
end

RegisterUnitEvent(709246, 1, Halary_OnCombat)
RegisterUnitEvent(709246, 2, Halary_OnLeaveCombat)
RegisterUnitEvent(709246, 3, Halary_OnKilledTarget)
RegisterUnitEvent(709246, 4, Halary_OnDied)