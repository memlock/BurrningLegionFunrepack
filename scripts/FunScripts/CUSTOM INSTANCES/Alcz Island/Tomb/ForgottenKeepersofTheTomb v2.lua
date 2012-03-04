
---------------------------------------------------------------------------
--Script for mob i made in alcz island tomb(wing of the cutom raid)
--Scripted for this repack
--By Avatar
---------------------------------------------------------------------------








function ForgottenKeepersofTheTomb_OnCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "This will be yours tomb aswell")
Unit:RegisterEvent("ForgottenKeepersofTheTombShadowBolt", 7000, 4)

Unit:RegisterEvent("ForgottenKeepersofTheTombShadowNova", 10000, 2)

end



function ForgottenKeepersofTheTombShadowBolt(pUnit, Event) 

pUnit:CastSpell(686, pUnit:GetRandomPlayer(0)) 

end



function ForgottenKeepersofTheTombShadowNova(pUnit, Event) 

pUnit:FullCastSpellOnTarget(69355, pUnit:GetClosestPlayer()) 

end



function ForgottenKeepersofTheTomb_OnLeaveCombat(Unit, Event) 

Unit:RemoveEvents() 

end



function ForgottenKeepersofTheTomb_OnDied(Unit, Event)
Unit:RemoveEvents() 

Unit:SendChatMessage(14, 0, "Endless darkness...!") 

end



function ForgottenKeepersofTheTomb_OnKilledTarget(Unit, Event) 

Unit:SendChatMessage(14, 0, "Death to the living!!") 

end



RegisterUnitEvent(719489, 1, "ForgottenKeepersofTheTomb_OnCombat")

RegisterUnitEvent(719489, 2, "ForgottenKeepersofTheTomb_OnLeaveCombat")

RegisterUnitEvent(719489, 3, "ForgottenKeepersofTheTomb_OnKilledTarget")

RegisterUnitEvent(719489, 4, "ForgottenKeepersofTheTomb_OnDied")