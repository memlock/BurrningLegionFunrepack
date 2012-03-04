function Munk_OnCombat(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Hmmm this will be good.")
pUnit:RegisterEvent("Munk_WaterBoltVolley", 12000, 0)
pUnit:RegisterEvent("Munk_FrostBlast", 6000, 0)
pUnit:RegisterEvent("Munk_FrostBreath", 15000, 0)
pUnit:RegisterEvent("Munk_FrostFever", 20000, 0)
pUnit:RegisterEvent("Munk_FrostNova", 30000, 0)
pUnit:RegisterEvent("Munk_ChainIce", 17000, 0)
pUnit:RegisterEvent("Munk_FreezingCloud", 5000, 0)
pUnit:RegisterEvent("Munk_Icebolt", 10000, 0)
Unit:RegisterEvent("Munk_Phase1", 1000, 0)
Unit:RegisterEvent("Munk_Phase2", 1000, 0)
end

function Munk_Icebolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(28522, pUnit:GetRandomPlayer(0)) 
end

function Munk_WaterBoltVolley(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59521, pUnit:GetRandomPlayer(0)) 
end

function Munk_FrostBreath(pUnit, Event) 
pUnit:CastSpell(49111, pUnit:GetMainTank()) 
end

function Munk_FrostBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27808, pUnit:GetMainTank()) 
end

function Munk_FrostFever(pUnit, Event) 
pUnit:FullCastSpellOnTarget(55095, pUnit:GetMainTank()) 
end

function Munk_FrostNova(pUnit, Event) 
pUnit:CastSpell(61376, pUnit:GetMainTank()) 
end

function Munk_ChainIce(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22745, pUnit:GetRandomPlayer(0)) 
end

function Munk_FreezingCloud(pUnit, Event)
pUnit:CastSpellOnTarget(60020, pUnit:GetMainTank())
end

function Munk_OnLeaveCombat(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "How would like an ice cream sandwich?!") 
end

function Munk_OnDied(pUnit, Event) 
pUnit:RemoveEvents() 
pUnit:SendChatMessage(14, 0, "King Havoc! I have failed the island! Please forgive me master!") 
end

function Munk_OnKilledTarget(pUnit, Event) 
pUnit:SendChatMessage(14, 0, "Weak! You all are weak!") 
end

function Munk_Phase1(pUnit, Event) 
if pUnit:GetHealthPct() < 80 then
pUnit:FullCastSpellOnTarget(59521)
pUnit:CastSpell(49111)
pUnit:FullCastSpellOnTarget(22745)
pUnit:CastSpellOnTarget(60020)
end 
end

function Munk_Phase2(pUnit, Event) 
if pUnit:GetHealthPct() < 50 then
pUnit:FullCastSpellOnTarget(59521)
pUnit:CastSpell(49111)
pUnit:FullCastSpellOnTarget(27808)
pUnit:FullCastSpellOnTarget(55095)
pUnit:CastSpell(61376)
pUnit:FullCastSpellOnTarget(22745)
end 
end


RegisterUnitEvent(900088, 1, "Munk_OnCombat")
RegisterUnitEvent(900088, 2, "Munk_OnLeaveCombat")
RegisterUnitEvent(900088, 3, "Munk_OnKilledTarget")
RegisterUnitEvent(900088, 4, "Munk_OnDied")