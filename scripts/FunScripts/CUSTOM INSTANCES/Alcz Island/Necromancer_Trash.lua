function Necromancer_OnCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "Your flesh is mine!")
Unit:RegisterEvent("Necromancer_Spell1", 3000, 0)
end

function Necromancer_Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(36275, Unit:GetRandomPlayer(0))
end

function Necromancer_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents()
end

function Necromancer_OnKillTarget(Unit, Event)
Unit:SendChatMessage(14, 0, "I will live up to Highlord Plaguebringer's expectations!")
end

function Necromancer_OnDied(Unit, Event)
Unit:SendChatMessage(14, 0, "I have failed you master!")
Unit:RemoveEvents()
end

RegisterUnitEvent(133710, 1, "Necromancer_OnCombat")
RegisterUnitEvent(133710, 2, "Necromancer_OnLeaveCombat")
RegisterUnitEvent(133710, 3, "Necromancer_OnKillTarget")
RegisterUnitEvent(133710, 4, "Necromancer_OnDied")