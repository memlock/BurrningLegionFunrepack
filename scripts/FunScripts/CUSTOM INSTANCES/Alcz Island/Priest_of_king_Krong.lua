function Priest_OnCombat(Unit, Event)
Unit:SendChatMessage(12, 0, "For Krong!")
Unit:RegisterEvent("Priest_Spell1", 1000, 30)
end

function Priest_Spell1(Unit, Event)
Unit:CastSpell(35124)
end

function Priest_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents() 
end

function Priest_OnKilledTarget(Unit, Event)
Unit:SendChatMessage(12, 0, "One more for Krong!")
end

function Priest_OnDied(Unit, Event)
Unit:SendChatMessage(12, 0, "My life is but a splinter, compared to the might of Krong!")
Unit:RemoveEvents() 
end

RegisterUnitEvent(133705, 1, "Priest_OnCombat")
RegisterUnitEvent(133705, 2, "Priest_OnLeaveCombat")
RegisterUnitEvent(133705, 3, "Priest_OnKilledTarget")
RegisterUnitEvent(133705, 4, "Priest_OnDied")