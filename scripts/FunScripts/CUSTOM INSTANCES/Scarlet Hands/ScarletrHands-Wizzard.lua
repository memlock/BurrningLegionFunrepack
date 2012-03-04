function ScarletWizard_OnCombat(Unit, Event) 
Unit:SendChatMessage(14, 0, "Feel the wrath of the magi!")
Unit:RegisterEvent("ScarletWizard_Fireblast", 8000, 0)
pUnit:RegisterEvent("ScarletWizard_Phase1", 1000, 0)
end

function ScarletWizard_Fireblast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(41484, pUnit:GetMainTank()) 
end

function ScarletWizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScarletWizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScarletWizard_OnKilledTarget(Unit, Event) 
end

function ScarletWizard_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:FullCastSpellOnTarget(41484)
end 


RegisterUnitEvent(400013, 1, "ScarletWizard_OnCombat")
RegisterUnitEvent(400013, 2, "ScarletWizard_OnLeaveCombat")
RegisterUnitEvent(400013, 3, "ScarletWizard_OnKilledTarget")
RegisterUnitEvent(400013, 4, "ScarletWizard_OnDied")
end