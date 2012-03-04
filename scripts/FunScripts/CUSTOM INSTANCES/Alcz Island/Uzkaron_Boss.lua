function uk_OnCombat(Unit, Event)
Unit:SetFaction(35)
Unit:RegisterEvent("uk_TalkStart1", 1000, 0)
end

--				--
	-- Cinematic --
--				--

function uk_TalkStart1(Unit,Event)
Unit:RemoveEvents()
Unit:SetCombatCapable(1)
x=Unit:GetX()
y=Unit:GetY()
z=Unit:GetZ()
o=Unit:GetO()
Unit:MoveTo(x, y+5, z, o)
Unit:SendChatMessage(14, 0, "Fools! Do you realize what you have done? I was in the middle of bending the will of the mage in the tower to my own! Although, the creature is more powerful than I anticipated...")
Unit:RegisterEvent("uk_TalkStart2", 9000, 0)
end

function uk_TalkStart2(Unit,Event)
Unit:RemoveEvents()
Unit:SetCombatCapable(0)
Unit:StopMovement(2000)
Unit:SendChatMessage(14, 0, "You think of me as a simple human? I have survived eons! I have witnessed the fall of empires! I have mastered every path, perfected every art! I am the messanger of the Old Gods themselves! Prepare yourselves, for utter destruction!")
Unit:SetModel(18194)
Unit:SetScale(0.3)
Unit:SetFaction(14)
Unit:RegisterEvent("uk_Phase1", 1000, 0)
Unit:RegisterEvent("uk_normalspell1", 30000, 0)
end

function uk_Phase1(Unit, Event)
if Unit:GetHealthPct() < 90 then
Unit:RemoveEvents()
Unit:SetScale(1) 
Unit:SendChatMessage(12, 0, "Witness my first path, the brave and mighty Warrior!")
Unit:SetModel(23806)
Unit:CastSpell(37786)
Unit:RegisterEvent("uk_1spell1", 10000, 0)
Unit:RegisterEvent("uk_1spell2", 20000, 0)
Unit:RegisterEvent("uk_Phase2", 1000, 0)
end
end

function uk_Phase2(Unit, Event)
if Unit:GetHealthPct() < 81 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "See the power of my second path, the powerful and knowledge hungry Mage!")
Unit:SetModel(26770)
Unit:CastSpell(43426)
Unit:RegisterEvent("uk_2spell1", 5000, 0)
Unit:RegisterEvent("uk_2spell2", 20000, 0)
Unit:RegisterEvent("uk_Phase3", 1000, 0)
end
end

function uk_Phase3(Unit, Event)
if Unit:GetHealthPct() < 72 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "The third path, the stealthy rogue, hiding in the shadows and using cheap tricks.")
Unit:SetModel(28208)
Unit:RegisterEvent("uk_3spell1", 15000, 0)
Unit:RegisterEvent("uk_3spell2", 5000, 0)
Unit:RegisterEvent("uk_Phase4", 1000, 0)
end
end

function uk_Phase4(Unit, Event)
if Unit:GetHealthPct() < 63 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "The fourth path, the mighty Paladan, defender of the light and the Alliance.")
Unit:SetModel(22209)
Unit:CastSpell(41541)
Unit:RegisterEvent("uk_4spell1", 30000, 0)
Unit:RegisterEvent("uk_Phase5", 1000, 0)
end
end

function uk_Phase5(Unit, Event)
if Unit:GetHealthPct() < 54 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "Ahhh... The fifth path- the great Deathknight, the might of the Scourge.")
Unit:SetModel(25444) 
Unit:RegisterEvent("uk_5spell1", 15000, 0)
Unit:RegisterEvent("uk_Phase6", 1000, 0) 
end
end

function uk_Phase6(Unit, Event)
if Unit:GetHealthPct() < 45 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "My sixth path, the Hunter, stalker of the wild.")
Unit:SetModel(28222)
Unit:RegisterEvent("uk_summon1", 1000, 1)	 
Unit:RegisterEvent("uk_summon2", 1000, 1)
Unit:CastSpell(49067)
Unit:RegisterEvent("uk_Phase7", 1000, 0)
end
end

function uk_Phase7(Unit, Event)
if Unit:GetHealthPct() < 36 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "My seventh path, the Druid- warden of the forest.")
Unit:SetModel(21635)
Unit:RegisterEvent("uk_7spell1", 8000, 0)
Unit:RegisterEvent("uk_Phase8", 1000, 0) 
end
end

function uk_Phase8(Unit, Event)
if Unit:GetHealthPct() < 27 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "The eighth path, the Shaman, calling upon the forces of the elements.")
Unit:SetModel(27083)
Unit:RegisterEvent("uk_8spell1", 10000, 0)
Unit:RegisterEvent("uk_Phase9", 1000, 0)
end
end

function uk_Phase9(Unit, Event)
if Unit:GetHealthPct() < 18 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "The ninth path, the priest, healing with the power of the Light or corrupting with the power of the Shadow.")
Unit:SetModel(7274)
Unit:RegisterEvent("uk_9spell1", 15000, 0)
Unit:RegisterEvent("uk_9spell2", 3000, 0)
Unit:RegisterEvent("uk_Phase10", 1000, 0)
end
end

function uk_Phase10(Unit, Event)
if Unit:GetHealthPct() < 9 then
Unit:RemoveEvents() 
Unit:SendChatMessage(12, 0, "The tenth path, the warlock, master of dark magic and destruction.")
Unit:SetModel(16628)
Unit:RegisterEvent("uk_10spell1", 2000, 0)
end
end

function uk_normalspell1 (Unit, Event)
Unit:CastSpell(38924)
end

function uk_1spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(59035, Unit:GetMainTank())
end

function uk_1spell2 (Unit, Event)
Unit:FullCastSpellOnTarget(54132, Unit:GetRandomPlayer(1))
end

function uk_2spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(28478, Unit:GetMainTank())
end

function uk_2spell2 (Unit, Event)
Unit:FullCastSpellOnTarget(54132, Unit:GetRandomPlayer(1))
end

function uk_3spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(41978, Unit:GetMainTank())
end

function uk_3spell2 (Unit, Event)
Unit:FullCastSpellOnTarget(59409, Unit:GetRandomPlayer(1))
end

function uk_4spell1 (Unit, Event)
Unit:CastSpell(48817)
end

function uk_5spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(55321, Unit:GetMainTank())
end

function uk_7spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(54459, Unit:GetMainTank())
end

function uk_8spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(61528, Unit:GetMainTank())
end

function uk_9spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(46560, Unit:GetRandomPlayer(0))
end

function uk_9spell2 (Unit, Event)
Unit:FullCastSpellOnTarget(52722, Unit:GetMainTank())
end

function uk_10spell1 (Unit, Event)
Unit:FullCastSpellOnTarget(57374, Unit:GetMainTank())
end

function uk_summon1(Unit, Event)
local x = Unit:GetX();
local y = Unit:GetY();
local z = Unit:GetZ();
local o = Unit:GetO();
Unit:SpawnCreature (133707, x, y, z, o, 14 ,60000);
end

function uk_summon2(Unit, Event)
local x = Unit:GetX();
local y = Unit:GetY();
local z = Unit:GetZ();
local o = Unit:GetO();
Unit:SpawnCreature (133708, x, y, z, o, 14 ,60000);
end

function uk_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents() 
end

function uk_OnKilledTarget(Unit, Event)
Unit:SendChatMessage(14, 0, "Join the Dark Ones!")
end

function uk_OnDied(Unit, Event)
Unit:SendChatMessage(12, 0, "I... will... return....")
Unit:RemoveEvents()
Unit:SetModel(18194)
Unit:SetScale(0.3)
end

function uk_OnSpawn(Unit, Event)
Unit:RemoveEvents()
Unit:SetModel(16279)
end


RegisterUnitEvent(133719, 1, "uk_OnCombat")
RegisterUnitEvent(133719, 2, "uk_OnLeaveCombat")
RegisterUnitEvent(133719, 3, "uk_OnKilledTarget")
RegisterUnitEvent(133719, 4, "uk_OnDied")
RegisterUnitEvent(133719, 6, "uk_OnSpawn")