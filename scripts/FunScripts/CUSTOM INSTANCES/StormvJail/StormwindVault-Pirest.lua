function Priest_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "We will never let you have the Vault!")
pUnit:RegisterEvent("Priest_GreaterHeal", 10000, 0)
pUnit:RegisterEvent("Priest_Phase1", 1000, 0)
end

function Priest_GreaterHeal(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34119, pUnit:GetMainTank()) 
end

function Priest_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "You will Never Get to the Vault!") 
end

function Priest_OnDied(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "No!") 
end

function Priest_OnKilledTarget(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "You will be trapped here forever!") 
end

function Priest_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:FullCastSpellOnTarget(34119)
end 
end

RegisterUnitEvent(80006, 1, "Priest_OnCombat")
RegisterUnitEvent(80006, 2, "Priest_OnLeaveCombat")
RegisterUnitEvent(80006, 3, "Priest_OnKilledTarget")
RegisterUnitEvent(80006, 4, "Priest_OnDied")