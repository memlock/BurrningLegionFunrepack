function Captain_OnCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "Ahoy!! What have we here?")
Unit:RegisterEvent("Captain_TalkStart1", 7000, 0)
Unit:Root()
Unit:SetFaction(35)
end

function Captain_TalkStart1(Unit,Event)
Unit:RemoveEvents()
Unit:SetCombatCapable(1)
Unit:SendChatMessage(12, 0, "Well.. What a nice suprise! Having fun slaying my brothers?")
Unit:RegisterEvent("Captain_TalkStart2", 7000, 0)
end

function Captain_TalkStart2(Unit,Event)
Unit:RemoveEvents()
Unit:SetCombatCapable(1)
Unit:SendChatMessage(12, 0, "You digust me! I knew I should of sunk ye ship the moment I saw you! This is personal now!")
Unit:RegisterEvent("Captain_TalkStart3", 9000, 0)
end

function Captain_TalkStart3(Unit,Event)
Unit:RemoveEvents()
Unit:SetCombatCapable(0)
Unit:SendChatMessage(14, 0, "You shall die land lubbers!")
Unit:Unroot()
Unit:SetFaction(14)
Unit:RegisterEvent("Captain_Phase1", 1000,0)
Unit:RegisterEvent("Captain_Spell1", 11000, 0)
Unit:RegisterEvent("Captain_Spell2", 15000, 0)
Unit:RegisterEvent("Captain_Spell3", 9000, 0)
Unit:RegisterEvent("Captain_Spell4", 10000, 0)
end

function Captain_Phase1(Unit, Event)
if Unit:GetHealthPct() < 75 then
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "Avast ye yellow-belly land lubber!")
Unit:CastSpell(46924)
Unit:RegisterEvent("Captain_Phase2", 1000, 0)
Unit:RegisterEvent("Captain_1Spell1", 10000, 0)
Unit:RegisterEvent("Captain_1Spell2", 7000, 0)
Unit:RegisterEvent("Captain_1Spell3", 5000, 0)
end
end

function Captain_Phase2(Unit, Event)
if Unit:GetHealthPct() < 50 then
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "I can smell ye fear, lilly livered sprite!")
Unit:CastSpell(55543)
Unit:RegisterEvent("Captain_Phase3", 1000, 0)
Unit:RegisterEvent("Captain_2Spell1", 11000, 0)
Unit:RegisterEvent("Captain_2Spell2", 10000, 0)
Unit:RegisterEvent("Captain_2Spell3", 9000, 0)
end
end

function Captain_Phase3(Unit, Event)
if Unit:GetHealthPct() < 25 then
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "How...are you..alive?!")
Unit:CastSpell(60030)
Unit:CastSpell(38166)
Unit:RegisterEvent("Captain_3Spell1", 11000, 0)
Unit:RegisterEvent("Captain_3Spell2", 10000, 0)
Unit:RegisterEvent("Captain_3Spell3", 9000, 0)
end
end

function Captain_Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(39171, Unit:GetMainTank())
end

function Captain_Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(22427, Unit:GetMainTank())
end

function Captain_Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(42397, Unit:GetMainTank())
end

function Captain_Spell4(Unit, Event)
Unit:CastSpell(13730)
end

function Captain_1Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(38260, Unit:GetMainTank())
end

function Captain_1Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(52885, Unit:GetRandomPlayer(4))
end

function Captain_1Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(53395, Unit:GetMainTank())
end

function Captain_2Spell1(Unit, Event)
Unit:CastSpell(36706)
end

function Captain_2Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(55550, Unit:GetRandomPlayer(0))
end

function Captain_2Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(58504, Unit:GetMainTank())
end

function Captain_3Spell1(Unit, Event)
Unit:CastSpell(33239)
end

function Captain_3Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(41178, Unit:GetMainTank())
end

function Captain_3Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(38913, Unit:GetRandomPlayer(0))
end

function Captain_OnLeaveCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "As I thought! Take that ye scurvy dogs!")
Unit:RemoveEvents() 
end

function Captain_OnKilledTarget(Unit, Event)
end

function Captain_OnDied(Unit, Event)
Unit:SendChatMessage(12, 0, "At least I won't have to face the Grand Magus..")
Unit:RemoveEvents()
end

RegisterUnitEvent(133702, 1, "Captain_OnCombat")
RegisterUnitEvent(133702, 2, "Captain_OnLeaveCombat")
RegisterUnitEvent(133702, 3, "Captain_OnKilledTarget")
RegisterUnitEvent(133702, 4, "Captain_OnDied")







