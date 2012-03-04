function ScarletMonk_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Feel the wrath of the Scarlets Hand!")
pUnit:RegisterEvent("ScarletMonk_HolyLight", 1000, 0)
pUnit:RegisterEvent("ScarletMonk_Phase1", 1000, 0)
end

function ScarletMonk_HolyLight(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27136, pUnit:GetMainTank()) 
end

function ScarletMonk_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
end

function ScarletMonk_OnDied(pUnit, Event) 
pUnit:RemoveEvents()
end

function ScarletMonk_OnKilledTarget(pUnit, Event) 
end

function ScarletMonk_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:FullCastSpellOnTarget(34119)
end 
end

RegisterUnitEvent(400010, 1, "ScarletMonk_OnCombat")
RegisterUnitEvent(400010, 2, "ScarletMonk_OnLeaveCombat")
RegisterUnitEvent(400010, 3, "ScarletMonk_OnKilledTarget")
RegisterUnitEvent(400010, 4, "ScarletMonk_OnDied")