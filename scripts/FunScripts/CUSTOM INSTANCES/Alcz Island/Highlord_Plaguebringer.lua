function dk_OnCombat(Unit, Event)
Unit:SendChatMessage(12, 0, "You shall make a fine addition to my army!")
Unit:RegisterEvent("dk_Spell1", 5000, 0)
Unit:RegisterEvent("dk_Spell5", 10000, 0)
Unit:RegisterEvent("dk_Phase1", 1000, 0)
end

function dk_Phase1(Unit, Event)
if Unit:GetHealthPct() < 65 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Deathknights! Aid me!")
Unit:RegisterEvent("dk_Phase2", 1000, 0)
Unit:RegisterEvent("dk_Summon", 1000, 2)
end
end

function dk_Phase2(Unit, Event)
if Unit:GetHealthPct() < 50 then
Unit:RemoveEvents()
Unit:SetModel(22702)
Unit:SetScale(2)
Unit:SendChatMessage(14, 0, "My mortal form is shed! Witness the power of true darkness!")
Unit:RegisterEvent("dk_Phase3", 1000, 0)
Unit:RegisterEvent("dk_Spell2", 5000, 0)
Unit:RegisterEvent("dk_Spell4", 20000, 0)
end
end

function dk_Phase3(Unit, Event)
if Unit:GetHealthPct() < 8 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "I am fed by the power of death itself! FEEL MY WRATH!!!")
Unit:RegisterEvent("dk_Spell3", 6000, 0)
end
end

function dk_Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(55321, Unit:GetMainTank())
end

function dk_Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(57374, Unit:GetMainTank())
end

function dk_Spell3(Unit, Event)
Unit:CastSpell(59377)
end


function dk_Spell4(Unit, Event)
Unit:FullCastSpellOnTarget(21330, Unit:GetRandomPlayer(0))
end


function dk_Spell5(Unit, Event)
Unit:FullCastSpellOnTarget(55053, Unit:GetRandomPlayer(0))
end

function dk_Summon(Unit, Event)
local x = Unit:GetX();
local y = Unit:GetY();
local z = Unit:GetZ();
local o = Unit:GetO();
Unit:SpawnCreature (133711, x, y, z, o, 14 ,60000);
end

function dk_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents() 
end

function dk_OnKilledTarget(Unit, Event)
Unit:SendChatMessage(14, 0, "Rest while you can, for soon you too shall taste the sweet embrace of undeath!")
end

function dk_OnDied(Unit, Event)
Unit:RemoveEvents()
Unit:SendChatMessage(12, 0, "Death... She stalks me... oncemore....")
end

RegisterUnitEvent(133714, 1, "dk_OnCombat")
RegisterUnitEvent(133714, 2, "dk_OnLeaveCombat")
RegisterUnitEvent(133714, 3, "dk_OnKilledTarget")
RegisterUnitEvent(133714, 4, "dk_OnDied")