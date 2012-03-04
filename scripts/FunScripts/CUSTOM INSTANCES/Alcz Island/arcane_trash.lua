function ac_OnCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "You shall not proceed!")
Unit:RegisterEvent("ac_Spell1", 6000, 0)
Unit:RegisterEvent("ac_Spell2", 12000, 0)
end

function ac_Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(59248, Unit:GetMainTank())
end

function ac_Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(34793, Unit:GetRandomPlayer(1))
end

function ac_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "No threat found. Resuming normal gaurd sequence.")
end

function ac_OnKilledTarget(Unit, Event)
Unit:SendChatMessage(12, 0, "Target eliminated. Determining next threat.")
end

function ac_OnDied(Unit, Event)
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "WARNING! WARNING! CRITICAL SYSTEM FAILURE! ERUPTION IN 5, 4, 3, 2, 1-")
Unit:CastSpell(28450)
Unit:RemoveEvents() 
end

RegisterUnitEvent(133721, 1, "ac_OnCombat")
RegisterUnitEvent(133721, 2, "ac_OnLeaveCombat")
RegisterUnitEvent(133721, 3, "ac_OnKilledTarget")
RegisterUnitEvent(133721, 4, "ac_OnDied")