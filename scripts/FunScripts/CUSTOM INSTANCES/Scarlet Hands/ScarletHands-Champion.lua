function ScarletChampion_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "$N, you will die!")
pUnit:RegisterEvent("ScarletChampion_Whirlwind", 15000, 0)
pUnit:RegisterEvent("ScarletChampion_Whirlwind1", 15000, 0)
pUnit:RegisterEvent("ScarletChampion_HolyLight", 20000, 0)
pUnit:RegisterEvent("ScarletChampion_Enrage", 10000, 0)
pUnit:RegisterEvent("ScarletChampion_Phase1", 1000, 0)
end

function ScarletChampion_Whirlwind(pUnit, Event) 
pUnit:FullCastSpell(8989, pUnit:GetMainTank()) 
end

function ScarletChampion_Whirlwind1(pUnit, Event) 
pUnit:FullCastSpell(15578, pUnit:GetMainTank()) 
end

function ScarletChampion_HolyLight(pUnit, Event) 
pUnit:FullCastSpell(27136, pUnit:GetRandomPlayer(0)) 
end

function ScarletChampion_Enrage(pUnit, Event) 
pUnit:FullCastSpell(14204, pUnit:GetRandomPlayer(0)) 
end

function ScarletChampion_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "This is the Last Stand!") 
end

function ScarletChampion_OnDied(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "Nooo!") 
end

function ScarletChampion_OnKilledTarget(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "I will cut you up!") 
end

function ScarletChampion_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:FullCastSpell(8989)
pUnit:FullCastSpell(15578)
pUnit:FullCastSpell(27136)
pUnit:FullCastSpell(14204)
end 

RegisterUnitEvent(400011, 1, "ScarletChampion_OnCombat")
RegisterUnitEvent(400011, 2, "ScarletChampion_OnLeaveCombat")
RegisterUnitEvent(400011, 3, "ScarletChampion_OnKilledTarget")
RegisterUnitEvent(400011, 4, "ScarletChampion_OnDied")
end