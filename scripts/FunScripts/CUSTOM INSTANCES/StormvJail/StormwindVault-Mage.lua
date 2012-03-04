function Mage_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Arcane power of the Mage will Kill all!")
pUnit:RegisterEvent("Mage_ArcaneExplosion", 10000, 0)
pUnit:RegisterEvent("Mage_Phase1", 1000, 0)
end

function Mage_ArcaneExplosion(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29973, pUnit:GetMainTank()) 
end

function Mage_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "") 
end

function Mage_OnDied(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "Nooo!") 
end

function Mage_OnKilledTarget(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Blahaha my arcane power was to much for you scums to handle!") 
end

function Mage_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:FullCastSpellOnTarget(34119)
end 

RegisterUnitEvent(80002, 1, "Mage_OnCombat")
RegisterUnitEvent(80002, 2, "Mage_OnLeaveCombat")
RegisterUnitEvent(80002, 3, "Mage_OnKilledTarget")
RegisterUnitEvent(80002, 4, "Mage_OnDied")
end