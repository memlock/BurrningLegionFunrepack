function Lich_OnCombat(Unit, event) 
Unit:SendChatMessage(14, 0, "haha! Scum! you won't defeat me!")
Unit:RegisterEvent("Lich_Buff", 1000, 0)
Unit:RegisterEvent("Lich_Bufftwo", 1000, 0)
end

function Lich_Buff(Unit, event) 
if Unit:GetHealthPct() < 65 then
Unit:FullCastSpell(12880)
end 
end

function Lich_Bufftwo(Unit, event) 
if Unit:GetHealthPct() < 20 then
Unit:RemoveEvents() 
Unit:FullCastSpell(14201)
end 
end

function Lich_OnDied(Unit, event) 
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "damn.... that was not how it was suposed to go...") 
end

function Lich_OnKilledTarget(Unit, event) 
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "Another one added to my mighty army!") 
end

RegisterUnitEvent(36023, 1, "Lich_OnCombat")
RegisterUnitEvent(36023, 3, "Lich_OnKilledTarget")
RegisterUnitEvent(36023, 4, "Lich_OnDied")