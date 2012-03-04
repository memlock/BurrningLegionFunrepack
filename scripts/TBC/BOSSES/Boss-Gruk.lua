function Gruk_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Lets see who is tough.")
pUnit:RegisterEvent("Gruk_ForcePunch", 20000, 0)
pUnit:RegisterEvent("Gruk_ArcingSmash", 10000, 0)
pUnit:RegisterEvent("Gruk_Enrage", 30000, 0)
pUnit:RegisterEvent("Gruk_Boulder", 8000, 0)
pUnit:RegisterEvent("Gruk_Boulder", 8000, 0)
pUnit:RegisterEvent("Gruk_RockRumble", 17000, 0)
pUnit:RegisterEvent("Gruk_MortalWound", 5000, 0)
pUnit:RegisterEvent("Gruk_Growth", 23000, 0)
pUnit:RegisterEvent("Gruk_Hurtfulstrike", 13000, 0)
pUnit:RegisterEvent("Gruk_Reverberation", 15000, 0)
pUnit:RegisterEvent("Gruk_GroundSlam", 25000, 0)
pUnit:RegisterEvent("Gruk_GronnLordsGrasp", 25000, 0)
pUnit:RegisterEvent("Gruk_Stoned", 25000, 0)
pUnit:RegisterEvent("Gruk_Shatter", 35000, 0)
pUnit:RegisterEvent("Gruk_GroundSmash", 15000, 0)
pUnit:RegisterEvent("Gruk_Banish", 60000, 0)
pUnit:RegisterEvent("Gruk_Phase1", 1000, 0)
pUnit:RegisterEvent("Gruk_Phase2", 1000, 0)
pUnit:RegisterEvent("Gruk_Phase3", 1000, 0)
end

function Gruk_ForcePunch(pUnit, Event) 
pUnit:CastSpell(34771, pUnit:GetClosestPlayer()) 
end

function Gruk_ArcingSmash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(28168, pUnit:GetClosestPlayer()) 
end

function Gruk_Enrage(pUnit, Event) 
pUnit:FullCastSpell(33958)
end

function Gruk_Boulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(42139, pUnit:GetRandomPlayer(0)) 
end

function Gruk_RockRumble(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38777, pUnit:GetRandomPlayer(0)) 
end

function Gruk_MortalWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38770, pUnit:GetMainTank()) 
end

function Gruk_Growth(pUnit, Event) 
pUnit:CastSpell(36300)
end

function Gruk_Hurtfulstrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33813, pUnit:GetMainTank()) 
end

function Gruk_Reverberation(pUnit, Event) 
pUnit:CastSpell(36297, pUnit:GetClosestPlayer()) 
end

function Gruk_GroundSlam(pUnit, Event) 
pUnit:CastSpell(33525, pUnit:GetClosestPlayer()) 
end


function Gruk_GronnLordsGrasp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33572, pUnit:GetRandomPlayer(0)) 
end

function Gruk_Stoned(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33652, pUnit:GetRandomPlayer(0)) 
end

function Gruk_Shatter(pUnit, Event) 
pUnit:CastSpell(33654, pUnit:GetClosestPlayer()) 
end

function Gruk_GroundSmash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38785, pUnit:GetRandomPlayer(0)) 
end

function Gruk_Banish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39622, pUnit:GetRandomPlayer(0)) 
end

function Gruk_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "Yeah, now I know who the tuff man is!") 
end

function Gruk_OnDied(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "No! Isle of dread! I have failed you! Sorryy....") 
end

function Gruk_OnKilledTarget(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Haha fool! I'am Gruk") 
end

function Gruk_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 90 then
pUnit:CastSpellOnTarget(33813)
pUnit:CastSpell(34771)
pUnit:CastSpell(34771)
pUnit:FullCastSpell(33958)
pUnit:FullCastSpellOnTarget(42139)
end 
end

function Gruk_Phase2(pUnit, Event) 
if pUnit:GetHealthPct() < 70 then
pUnit:CastSpellOnTarget(33813)
pUnit:CastSpell(34771)
pUnit:CastSpell(34771)
pUnit:FullCastSpell(33958)
pUnit:FullCastSpellOnTarget(42139)
pUnit:FullCastSpellOnTarget(38777)
pUnit:FullCastSpellOnTarget(38770)
pUnit:CastSpell(36300)
pUnit:CastSpell(36297)
end 
end

function Gruk_Phase3(pUnit, Event) 
if pUnit:GetHealthPct() < 70 then
pUnit:CastSpellOnTarget(33813)
pUnit:CastSpell(34771)
pUnit:CastSpell(34771)
pUnit:FullCastSpell(33958)
pUnit:FullCastSpellOnTarget(42139)
pUnit:FullCastSpellOnTarget(38777)
pUnit:FullCastSpellOnTarget(38770)
pUnit:CastSpell(36300)
pUnit:CastSpell(36297)
pUnit:CastSpell(33525)
pUnit:CastSpell(33572)
pUnit:FullCastSpellOnTarget(33652)
pUnit:CastSpell(33654)
pUnit:FullCastSpellOnTarget(38785)
pUnit:FullCastSpellOnTarget(39622)
end 
end


RegisterUnitEvent(2527113, 1, "Gruk_OnCombat")
RegisterUnitEvent(2527113, 2, "Gruk_OnLeaveCombat")
RegisterUnitEvent(2527113, 3, "Gruk_OnKilledTarget")
RegisterUnitEvent(2527113, 4, "Gruk_OnDied")