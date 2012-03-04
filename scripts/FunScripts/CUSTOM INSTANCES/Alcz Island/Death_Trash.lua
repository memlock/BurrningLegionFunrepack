function Deathknight_OnCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "Death awaits you mortals!")
Unit:RegisterEvent("Deathknight_Spell1", 10000, 0)
end

function Deathknight_Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(56361, Unit:GetMainTank())
end


function Deathknight_OnKillTarget(Unit, Event)
Unit:SendChatMessage(14, 0, "Highlord Plaguebringer shall be pleased indeed.")
end

function Deathknight_OnDied(Unit, Event)
Unit:SendChatMessage(14, 0, "Highlord Plaguebringer shall see to your deaths!")
Unit:RemoveEvents()
end

RegisterUnitEvent(133711, 1, "Deathknight_OnCombat")
RegisterUnitEvent(133711, 3, "Deathknight_OnKillTarget")
RegisterUnitEvent(133711, 4, "Deathknight_OnDied")