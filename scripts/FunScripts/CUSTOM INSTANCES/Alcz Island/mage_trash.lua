function mt_OnCombat(Unit, Event)
Unit:SendChatMessage(12, 0, "I live to serve the Magus!")
Unit:RegisterEvent("mt_Spell1", 6000, 0)
Unit:RegisterEvent("mt_Spell2", 20000, 0)
Unit:RegisterEvent("mt_Spell3", 15000, 0)
end

function mt_Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(61087, Unit:GetMainTank())
end

function mt_Spell2(Unit, Event)
Unit:CastSpell(5762)
end

function mt_Spell3(Unit, Event)
Unit:CastSpell(54890)
end

function mt_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents() 
end

function mt_OnKilledTarget(Unit, Event)
Unit:SendChatMessage(12, 0, "For the Magus!")
end

function mt_OnDied(Unit, Event)
Unit:SendChatMessage(12, 0, "I am free! Thank you- and run! Run while you can!")
Unit:RemoveEvents() 
end

RegisterUnitEvent(133721, 1, "mt_OnCombat")
RegisterUnitEvent(133721, 2, "mt_OnLeaveCombat")
RegisterUnitEvent(133721, 3, "mt_OnKilledTarget")
RegisterUnitEvent(133721, 4, "mt_OnDied")