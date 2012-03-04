function GreatWarrior_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Feel my wrath!")
pUnit:RegisterEvent("GreatWarrior_Hamstring", 20000, 0)
pUnit:RegisterEvent("GreatWarrior_Bloodrage", 5000, 0)
pUnit:RegisterEvent("GreatWarrior_Bloodrage", 20000, 0)
pUnit:RegisterEvent("GreatWarrior_Thunderclap", 15000, 0)
pUnit:RegisterEvent("GreatWarrior_Phase1", 1000, 0)
end

function GreatWarrior_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31553, pUnit:GetMainTank()) 
end

function GreatWarrior_Bloodrage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30330, pUnit:GetMainTank()) 
end

function GreatWarrior_Bloodrage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2687, pUnit:GetMainTank()) 
end

function GreatWarrior_Thunderclap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11581, pUnit:GetMainTank()) 
end

function GreatWarrior_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "Run fools!") 
end

function GreatWarrior_OnDied(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "Noo!") 
end

function GreatWarrior_OnKilledTarget(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Hahaha!") 
end

function GreatWarrior_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:FullCastSpellOnTarget(31553)
pUnit:FullCastSpellOnTarget(30330)
pUnit:FullCastSpellOnTarget(2687)
pUnit:FullCastSpellOnTarget(11581)
end 
end

RegisterUnitEvent(80001, 1, "GreatWarrior_OnCombat")
RegisterUnitEvent(80001, 2, "GreatWarrior_OnLeaveCombat")
RegisterUnitEvent(80001, 3, "GreatWarrior_OnKilledTarget")
RegisterUnitEvent(80001, 4, "GreatWarrior_OnDied")