---------------------------------------------------------------------------
--Script for mob i made in alcz island tomb(wing of the cutom raid)
--Scripted for this repack
--by Avatar
---------------------------------------------------------------------------
function Requilis_OnCombat(Unit, Event) 
Unit:SendChatMessage(14, 0, "Sickness and Death will grasp your soul!")
Unit:RegisterEvent("Requilis_Phase1", 1000, 0)
end

function Requilis_Phase1(Unit, Event)
if (Unit:GetHealthPct() <= 75) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Plague will be your demise!!")
Unit:RegisterEvent("Requilis_UnboundPlague", 10000, 5)
Unit:RegisterEvent("Requilis_Phase2", 1000, 0)
end
end

function Requilis_Phase2(Unit, Event)
if (Unit:GetHealthPct() <= 45) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Death to all the living!!")
Unit:RegisterEvent("Requilis_OozeEruption", 20000, 3)
end
end

function Requilis_UnboundPlague(pUnit, Event) 
pUnit:CastSpellOnTarget(72855, pUnit:GetRandomPlayer(0))
end

function Requilis_OozeEruption(pUnit, Event)
Unit:RemoveEvents()  
pUnit:CastSpell(72505)
end

function Requilis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Requilis_OnDied(Unit, Event) 
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "Not possible...ahhhh") 
end

function Requilis_OnKilledTarget(Unit, Event) 
Unit:SendChatMessage(14, 0, "You will be my slave for eternity!!HAHAHA") 
end

RegisterUnitEvent(509226, 1, Requilis_OnCombat)
RegisterUnitEvent(509226, 2, Requilis_OnLeaveCombat)
RegisterUnitEvent(509226, 3, Requilis_OnKilledTarget)
RegisterUnitEvent(509226, 4, Requilis_OnDied)