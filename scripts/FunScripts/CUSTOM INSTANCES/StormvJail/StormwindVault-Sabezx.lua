function Sabezx_OnCombat(Unit, Event) 
Unit:SendChatMessage(14, 0, "Blah! Your kind isn't allowed here!")
Unit:RegisterEvent("Sabezx_ShadowNova", 15000, 0)
Unit:RegisterEvent("Sabezx_Enfeeble", 20000, 0)
Unit:RegisterEvent("Sabezx_ShadowWord", 10000, 0)
Unit:RegisterEvent("Sabezx_Thrash", 8000, 0)
Unit:RegisterEvent("Sabezx_AmpDamage", 13000, 0)
Unit:RegisterEvent("Sabezx_Phase1", 1000, 0)
end

function Sabezx_Enfeeble(pUnit, Event) 
pUnit:CastSpell(30843, pUnit:GetRandomPlayer(0)) 
end

function Sabezx_ShadowNova(pUnit, Event) 
pUnit:CastSpell(30852, pUnit:GetClosestPlayer()) 
end

function Sabezx_ShadowWord(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30854, pUnit:GetRandomPlayer(0)) 
end

function Sabezx_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function Sabezx_AmpDamage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39095, pUnit:GetRandomPlayer(0)) 
end

function Sabezx_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sabezx_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sabezx_OnKilledTarget(Unit, Event) 
end

function Sabezx_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:CastSpell(30843)
pUnit:CastSpell(30852)
pUnit:FullCastSpellOnTarget(30854)
pUnit:FullCastSpellOnTarget(3391)
pUnit:FullCastSpellOnTarget(39095)
end
end

RegisterUnitEvent(80005, 1, "Sabezx_OnCombat")
RegisterUnitEvent(80005, 2, "Sabezx_OnLeaveCombat")
RegisterUnitEvent(80005, 3, "Sabezx_OnKilledTarget")
RegisterUnitEvent(80005, 4, "Sabezx_OnDied")