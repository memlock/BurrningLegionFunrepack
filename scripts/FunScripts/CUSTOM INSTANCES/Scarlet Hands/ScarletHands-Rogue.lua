function Scarletrogue_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "This is your End $N")
pUnit:RegisterEvent("Scarletrogue_Agility", 10000, 1)
pUnit:RegisterEvent("Scarletrogue_BalnazzarTransformStun", 15000, 1)
pUnit:RegisterEvent("Scarletrogue_Blind", 15000, 0)
pUnit:RegisterEvent("Scarletrogue_Vanish", 13000, 0)
pUnit:RegisterEvent("Scarletrogue_Uberstealth", 2000, 0)
pUnit:RegisterEvent("Scarletrogue_Phase1", 1000, 0)
end

function Scarletrogue_Agility(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17538, pUnit:GetRandomPlayer(0)) 
end

function Scarletrogue_BalnazzarTransformStun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17398, pUnit:GetMainTank()) 
end

function Scarletrogue_Blind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43433, pUnit:GetRandomPlayer(0)) 
end

function Scarletrogue_Vanish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(26889, pUnit:GetRandomPlayer(0)) 
end

function Scarletrogue_Uberstealth(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10032, pUnit:GetRandomPlayer(0)) 
end

function Scarletrogue_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "Can you see?!") 
end

function Scarletrogue_OnDied(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "Do not move!") 
end

function Scarletrogue_OnKilledTarget(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "My Agility is inpowering") 
end

function Scarletrogue_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:FullCastSpellOnTarget(17538)
pUnit:FullCastSpellOnTarget(17398)
pUnit:FullCastSpellOnTarget(43433)
pUnit:FullCastSpellOnTarget(26889)
pUnit:FullCastSpellOnTarget(10032)
end 

RegisterUnitEvent(400012, 1, "Scarletrogue_OnCombat")
RegisterUnitEvent(400012, 2, "Scarletrogue_OnLeaveCombat")
RegisterUnitEvent(400012, 3, "Scarletrogue_OnKilledTarget")
RegisterUnitEvent(400012, 4, "Scarletrogue_OnDied")
end