--[[ Bloodmyst Isle -- Atoph the Bloodcursed.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function AtophtheBloodcursed_OnCombat(Unit, Event)
Unit:RegisterEvent("AtophtheBloodcursed_Rend", 10000, 0)
Unit:RegisterEvent("AtophtheBloodcursed_Strike", 6000, 0)
end

function AtophtheBloodcursed_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function AtophtheBloodcursed_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetClosestPlayer()) 
end

function AtophtheBloodcursed_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AtophtheBloodcursed_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AtophtheBloodcursed_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17715, 1, "AtophtheBloodcursed_OnCombat")
RegisterUnitEvent(17715, 2, "AtophtheBloodcursed_OnLeaveCombat")
RegisterUnitEvent(17715, 3, "AtophtheBloodcursed_OnKilledTarget")
RegisterUnitEvent(17715, 4, "AtophtheBloodcursed_OnDied")


--[[ Bloodmyst Isle -- Atoph the Bloodcursed.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function AxxarienHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienHellcaller_RainOfFire", 10000, 0)
end

function AxxarienHellcaller_RainOfFire(pUnit, Event) 
pUnit:CastSpell(11990) 
end

function AxxarienHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17342, 1, "AxxarienHellcaller_OnCombat")
RegisterUnitEvent(17342, 2, "AxxarienHellcaller_OnLeaveCombat")
RegisterUnitEvent(17342, 3, "AxxarienHellcaller_OnKilledTarget")
RegisterUnitEvent(17342, 4, "AxxarienHellcaller_OnDied")


--[[ Bloodmyst Isle -- Axxarien Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function AxxarienShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienShadowstalker_Corruption", 8000, 0)
end

function AxxarienShadowstalker_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21068, pUnit:GetMainTank()) 
end

function AxxarienShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17340, 1, "AxxarienShadowstalker_OnCombat")
RegisterUnitEvent(17340, 2, "AxxarienShadowstalker_OnLeaveCombat")
RegisterUnitEvent(17340, 3, "AxxarienShadowstalker_OnKilledTarget")
RegisterUnitEvent(17340, 4, "AxxarienShadowstalker_OnDied")


--[[ Bloodmyst Isle -- Axxarien Trickster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function AxxarienTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienTrickster_Eviscerate", 10000, 0)
end

function AxxarienTrickster_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function AxxarienTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17341, 1, "AxxarienTrickster_OnCombat")
RegisterUnitEvent(17341, 2, "AxxarienTrickster_OnLeaveCombat")
RegisterUnitEvent(17341, 3, "AxxarienTrickster_OnKilledTarget")
RegisterUnitEvent(17341, 4, "AxxarienTrickster_OnDied")


--[[ Bloodmyst Isle -- Blacksilt Seer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlacksiltSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltSeer_Rejuvenation", 10000, 0)
Unit:RegisterEvent("BlacksiltSeer_Wrath", 7000, 0)
end

function BlacksiltSeer_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function BlacksiltSeer_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function BlacksiltSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17330, 1, "BlacksiltSeer_OnCombat")
RegisterUnitEvent(17330, 2, "BlacksiltSeer_OnLeaveCombat")
RegisterUnitEvent(17330, 3, "BlacksiltSeer_OnKilledTarget")
RegisterUnitEvent(17330, 4, "BlacksiltSeer_OnDied")


--[[ Bloodmyst Isle -- Blacksilt Shorestriker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlacksiltShorestriker_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltShorestriker_Net", 8000, 0)
end

function BlacksiltShorestriker_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31290, pUnit:GetMainTank()) 
end

function BlacksiltShorestriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltShorestriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltShorestriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17328, 1, "BlacksiltShorestriker_OnCombat")
RegisterUnitEvent(17328, 2, "BlacksiltShorestriker_OnLeaveCombat")
RegisterUnitEvent(17328, 3, "BlacksiltShorestriker_OnKilledTarget")
RegisterUnitEvent(17328, 4, "BlacksiltShorestriker_OnDied")


--[[ Bloodmyst Isle -- Blacksilt Tidecaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlacksiltTidecaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltTidecaller_LightningShield", 5000, 0)
Unit:RegisterEvent("BlacksiltTidecaller_Rejuvenation", 10000, 0)
end

function BlacksiltTidecaller_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function BlacksiltTidecaller_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function BlacksiltTidecaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltTidecaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltTidecaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17327, 1, "BlacksiltTidecaller_OnCombat")
RegisterUnitEvent(17327, 2, "BlacksiltTidecaller_OnLeaveCombat")
RegisterUnitEvent(17327, 3, "BlacksiltTidecaller_OnKilledTarget")
RegisterUnitEvent(17327, 4, "BlacksiltTidecaller_OnDied")


--[[ Bloodmyst Isle -- Bloodcursed Naga.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BloodcursedNaga_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodcursedNaga_FrostArmor", 2000, 1)
Unit:RegisterEvent("BloodcursedNaga_Frostbolt", 8000, 0)
end

function BloodcursedNaga_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function BloodcursedNaga_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function BloodcursedNaga_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodcursedNaga_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodcursedNaga_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17713, 1, "BloodcursedNaga_OnCombat")
RegisterUnitEvent(17713, 2, "BloodcursedNaga_OnLeaveCombat")
RegisterUnitEvent(17713, 3, "BloodcursedNaga_OnKilledTarget")
RegisterUnitEvent(17713, 4, "BloodcursedNaga_OnDied")


--[[ Bloodmyst Isle -- Bloodcursed Naga.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlueFlutterer_OnCombat(Unit, Event)
Unit:RegisterEvent("BlueFlutterer_Rake", 10000, 0)
end

function BlueFlutterer_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36332, pUnit:GetMainTank()) 
end

function BlueFlutterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlueFlutterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlueFlutterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17349, 1, "BlueFlutterer_OnCombat")
RegisterUnitEvent(17349, 2, "BlueFlutterer_OnLeaveCombat")
RegisterUnitEvent(17349, 3, "BlueFlutterer_OnKilledTarget")
RegisterUnitEvent(17349, 4, "BlueFlutterer_OnDied")


--[[ Bloodmyst Isle -- Bristlelimb Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BristlelimbShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlelimbShaman_FlameShock", 10000, 0)
Unit:RegisterEvent("BristlelimbShaman_ScorchingTotem", 2000, 1)
end

function BristlelimbShaman_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32967, pUnit:GetMainTank()) 
end

function BristlelimbShaman_ScorchingTotem(pUnit, Event) 
pUnit:CastSpell(32968) 
end

function BristlelimbShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlelimbShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlelimbShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17320, 1, "BristlelimbShaman_OnCombat")
RegisterUnitEvent(17320, 2, "BristlelimbShaman_OnLeaveCombat")
RegisterUnitEvent(17320, 3, "BristlelimbShaman_OnKilledTarget")
RegisterUnitEvent(17320, 4, "BristlelimbShaman_OnDied")


--[[ Bloodmyst Isle -- Bristlelimb Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BristlelimbWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlelimbWarrior_Strike", 6000, 0)
end

function BristlelimbWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function BristlelimbWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlelimbWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlelimbWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17321, 1, "BristlelimbWarrior_OnCombat")
RegisterUnitEvent(17321, 2, "BristlelimbWarrior_OnLeaveCombat")
RegisterUnitEvent(17321, 3, "BristlelimbWarrior_OnKilledTarget")
RegisterUnitEvent(17321, 4, "BristlelimbWarrior_OnDied")


--[[ Bloodmyst Isle -- Corrupted Stomper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function CorruptedStomper_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedStomper_Stomp", 8000, 0)
end

function CorruptedStomper_Stomp(pUnit, Event) 
pUnit:CastSpell(31277) 
end

function CorruptedStomper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedStomper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedStomper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17353, 1, "CorruptedStomper_OnCombat")
RegisterUnitEvent(17353, 2, "CorruptedStomper_OnLeaveCombat")
RegisterUnitEvent(17353, 3, "CorruptedStomper_OnKilledTarget")
RegisterUnitEvent(17353, 4, "CorruptedStomper_OnDied")


--[[ Bloodmyst Isle -- Corrupted Stomper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function ElderBrownBear_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderBrownBear_Swipe", 8000, 0)
end

function ElderBrownBear_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function ElderBrownBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderBrownBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderBrownBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17348, 1, "ElderBrownBear_OnCombat")
RegisterUnitEvent(17348, 2, "ElderBrownBear_OnLeaveCombat")
RegisterUnitEvent(17348, 3, "ElderBrownBear_OnKilledTarget")
RegisterUnitEvent(17348, 4, "ElderBrownBear_OnDied")


--[[ Bloodmyst Isle -- Enraged Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function EnragedRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedRavager_Enrage", 10000, 1)
Unit:RegisterEvent("EnragedRavager_Ravage", 8000, 0)
end

function EnragedRavager_Enrage(pUnit, Event) 
pUnit:CastSpell(15716) 
end

function EnragedRavager_Ravage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3242, pUnit:GetMainTank()) 
end

function EnragedRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17527, 1, "EnragedRavager_OnCombat")
RegisterUnitEvent(17527, 2, "EnragedRavager_OnLeaveCombat")
RegisterUnitEvent(17527, 3, "EnragedRavager_OnKilledTarget")
RegisterUnitEvent(17527, 4, "EnragedRavager_OnDied")


--[[ Bloodmyst Isle -- Fenissa the Assassin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function FenissatheAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("FenissatheAssassin_Gouge", 8000, 0)
Unit:RegisterEvent("FenissatheAssassin_SinisterStrike", 6000, 0)
end

function FenissatheAssassin_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38863, pUnit:GetMainTank()) 
end

function FenissatheAssassin_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function FenissatheAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FenissatheAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FenissatheAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(22060, 1, "FenissatheAssassin_OnCombat")
RegisterUnitEvent(22060, 2, "FenissatheAssassin_OnLeaveCombat")
RegisterUnitEvent(22060, 3, "FenissatheAssassin_OnKilledTarget")
RegisterUnitEvent(22060, 4, "FenissatheAssassin_OnDied")


--[[ Bloodmyst Isle -- Fouled Water Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function FouledWaterSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("FouledWaterSpirit_Bloodbolt", 8000, 0)
Unit:RegisterEvent("FouledWaterSpirit_BloodmystChill", 2000, 1)
end

function FouledWaterSpirit_Bloodbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31281, pUnit:GetMainTank()) 
end

function FouledWaterSpirit_BloodmystChill(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31280, pUnit:GetMainTank()) 
end

function FouledWaterSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FouledWaterSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FouledWaterSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17358, 1, "FouledWaterSpirit_OnCombat")
RegisterUnitEvent(17358, 2, "FouledWaterSpirit_OnLeaveCombat")
RegisterUnitEvent(17358, 3, "FouledWaterSpirit_OnKilledTarget")
RegisterUnitEvent(17358, 4, "FouledWaterSpirit_OnDied")


--[[ Bloodmyst Isle -- Grizzled Brown Bear.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function GrizzledBrownBear_OnCombat(Unit, Event)
Unit:RegisterEvent("GrizzledBrownBear_Swipe", 8000, 0)
end

function GrizzledBrownBear_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function GrizzledBrownBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrizzledBrownBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrizzledBrownBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17347, 1, "GrizzledBrownBear_OnCombat")
RegisterUnitEvent(17347, 2, "GrizzledBrownBear_OnLeaveCombat")
RegisterUnitEvent(17347, 3, "GrizzledBrownBear_OnKilledTarget")
RegisterUnitEvent(17347, 4, "GrizzledBrownBear_OnDied")


--[[ Bloodmyst Isle -- Hand of Argus Swordsman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function HandofArgusSwordsman_OnCombat(Unit, Event)
Unit:RegisterEvent("HandofArgusSwordsman_BattleSgout", 2000, 1)
Unit:RegisterEvent("HandofArgusSwordsman_Strike", 6000, 0)
end

function HandofArgusSwordsman_BattleSgout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function HandofArgusSwordsman_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function HandofArgusSwordsman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HandofArgusSwordsman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HandofArgusSwordsman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17704, 1, "HandofArgusSwordsman_OnCombat")
RegisterUnitEvent(17704, 2, "HandofArgusSwordsman_OnLeaveCombat")
RegisterUnitEvent(17704, 3, "HandofArgusSwordsman_OnKilledTarget")
RegisterUnitEvent(17704, 4, "HandofArgusSwordsman_OnDied")


--[[ Bloodmyst Isle -- Hand of Argus Swordsman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function HighChiefBristlelimb_OnCombat(Unit, Event)
Unit:RegisterEvent("HighChiefBristlelimb_DemoralizingRoar", 2000, 1)
Unit:RegisterEvent("HighChiefBristlelimb_Maul", 6000, 0)
end

function HighChiefBristlelimb_DemoralizingRoar(pUnit, Event) 
pUnit:CastSpell(20753) 
end

function HighChiefBristlelimb_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15793, pUnit:GetMainTank()) 
end

function HighChiefBristlelimb_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighChiefBristlelimb_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighChiefBristlelimb_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17702, 1, "HighChiefBristlelimb_OnCombat")
RegisterUnitEvent(17702, 2, "HighChiefBristlelimb_OnLeaveCombat")
RegisterUnitEvent(17702, 3, "HighChiefBristlelimb_OnKilledTarget")
RegisterUnitEvent(17702, 4, "HighChiefBristlelimb_OnDied")


--[[ Bloodmyst Isle -- Infected Wildkin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function InfectedWildkin_OnCombat(Unit, Event)
Unit:RegisterEvent("InfectedWildkin_InfectedWound", 10000, 0)
end

function InfectedWildkin_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31282, pUnit:GetMainTank()) 
end

function InfectedWildkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfectedWildkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfectedWildkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17322, 1, "InfectedWildkin_OnCombat")
RegisterUnitEvent(17322, 2, "InfectedWildkin_OnLeaveCombat")
RegisterUnitEvent(17322, 3, "InfectedWildkin_OnKilledTarget")
RegisterUnitEvent(17322, 4, "InfectedWildkin_OnDied")


--[[ Bloodmyst Isle -- Mutated Tangler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function MutatedTangler_OnCombat(Unit, Event)
Unit:RegisterEvent("MutatedTangler_EntanglingRoots", 10000, 0)
end

function MutatedTangler_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31287, pUnit:GetMainTank()) 
end

function MutatedTangler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MutatedTangler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MutatedTangler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17346, 1, "MutatedTangler_OnCombat")
RegisterUnitEvent(17346, 2, "MutatedTangler_OnLeaveCombat")
RegisterUnitEvent(17346, 3, "MutatedTangler_OnKilledTarget")
RegisterUnitEvent(17346, 4, "MutatedTangler_OnDied")


--[[ Bloodmyst Isle -- Myst Leecher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function MystLeecher_OnCombat(Unit, Event)
Unit:RegisterEvent("MystLeecher_LeechPoison", 10000, 0)
end

function MystLeecher_LeechPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31288, pUnit:GetMainTank()) 
end

function MystLeecher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystLeecher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystLeecher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17523, 1, "MystLeecher_OnCombat")
RegisterUnitEvent(17523, 2, "MystLeecher_OnLeaveCombat")
RegisterUnitEvent(17523, 3, "MystLeecher_OnKilledTarget")
RegisterUnitEvent(17523, 4, "MystLeecher_OnDied")


--[[ Bloodmyst Isle -- Myst Spinner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function MystSpinner_OnCombat(Unit, Event)
Unit:RegisterEvent("MystSpinner_Web", 10000, 0)
end

function MystSpinner_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function MystSpinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystSpinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystSpinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17522, 1, "MystSpinner_OnCombat")
RegisterUnitEvent(17522, 2, "MystSpinner_OnLeaveCombat")
RegisterUnitEvent(17522, 3, "MystSpinner_OnKilledTarget")
RegisterUnitEvent(17522, 4, "MystSpinner_OnDied")


--[[ Bloodmyst Isle -- Nazzivus Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function NazzivusFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("NazzivusFelsworn_Immolate", 6000, 1)
Unit:RegisterEvent("NazzivusFelsworn_ShadowBolt", 8000, 0)
end

function NazzivusFelsworn_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function NazzivusFelsworn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function NazzivusFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NazzivusFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NazzivusFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17339, 1, "NazzivusFelsworn_OnCombat")
RegisterUnitEvent(17339, 2, "NazzivusFelsworn_OnLeaveCombat")
RegisterUnitEvent(17339, 3, "NazzivusFelsworn_OnKilledTarget")
RegisterUnitEvent(17339, 4, "NazzivusFelsworn_OnDied")


--[[ Bloodmyst Isle -- Prophet Velen.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function ProphetVelen_OnCombat(Unit, Event)
Unit:RegisterEvent("ProphetVelen_HolyBlast", 15000, 0)
Unit:RegisterEvent("ProphetVelen_HolyNova", 18000, 0)
Unit:RegisterEvent("ProphetVelen_HolySmite", 13000, 0)
Unit:RegisterEvent("ProphetVelen_PrayerofHealing", 20000, 0)
Unit:RegisterEvent("ProphetVelen_StaffStrike", 12000, 0)
end

function ProphetVelen_HolyBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59700, pUnit:GetMainTank()) 
end

function ProphetVelen_HolyNova(pUnit, Event) 
pUnit:CastSpell(59701) 
end

function ProphetVelen_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59703, pUnit:GetRandomPlayer(0)) 
end

function ProphetVelen_PrayerofHealing(pUnit, Event) 
pUnit:CastSpell(59698) 
end

function ProphetVelen_StaffStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33592, pUnit:GetMainTank()) 
end

function ProphetVelen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ProphetVelen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ProphetVelen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17468, 1, "ProphetVelen_OnCombat")
RegisterUnitEvent(17468, 2, "ProphetVelen_OnLeaveCombat")
RegisterUnitEvent(17468, 3, "ProphetVelen_OnKilledTarget")
RegisterUnitEvent(17468, 4, "ProphetVelen_OnDied")


--[[ Bloodmyst Isle -- Razormaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function Razormaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Razormaw_FlameBreath", 8000, 0)
Unit:RegisterEvent("Razormaw_Swipe", 6000, 0)
Unit:RegisterEvent("Razormaw_TerrifyingRoar", 12000, 0)
end

function Razormaw_FlameBreath(pUnit, Event) 
pUnit:CastSpell(8873) 
end

function Razormaw_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function Razormaw_TerrifyingRoar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14100, pUnit:GetMainTank()) 
end

function Razormaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Razormaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Razormaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17592, 1, "Razormaw_OnCombat")
RegisterUnitEvent(17592, 2, "Razormaw_OnLeaveCombat")
RegisterUnitEvent(17592, 3, "Razormaw_OnKilledTarget")
RegisterUnitEvent(17592, 4, "Razormaw_OnDied")


--[[ Bloodmyst Isle -- Royal Blue Flutterer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function RoyalBlueFlutterer_OnCombat(Unit, Event)
Unit:RegisterEvent("RoyalBlueFlutterer_Rake", 8000, 0)
end

function RoyalBlueFlutterer_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36332, pUnit:GetMainTank()) 
end

function RoyalBlueFlutterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoyalBlueFlutterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoyalBlueFlutterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17350, 1, "RoyalBlueFlutterer_OnCombat")
RegisterUnitEvent(17350, 2, "RoyalBlueFlutterer_OnLeaveCombat")
RegisterUnitEvent(17350, 3, "RoyalBlueFlutterer_OnKilledTarget")
RegisterUnitEvent(17350, 4, "RoyalBlueFlutterer_OnDied")


--[[ Bloodmyst Isle -- Sironas.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function Sironas_OnCombat(Unit, Event)
Unit:RegisterEvent("Sironas_CurseofBlood", 2000, 1)
Unit:RegisterEvent("Sironas_CurseofTongues", 10000, 0)
Unit:RegisterEvent("Sironas_Immolate", 6000, 1)
Unit:RegisterEvent("Sironas_ShadowCleave", 9000, 0)
Unit:RegisterEvent("Sironas_Uppercut", 7500, 0)
end

function Sironas_CurseofBlood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8282, pUnit:GetMainTank()) 
end

function Sironas_CurseofTongues(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13338, pUnit:GetMainTank()) 
end

function Sironas_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12742, pUnit:GetMainTank()) 
end

function Sironas_ShadowCleave(pUnit, Event) 
pUnit:CastSpell(31629) 
end

function Sironas_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function Sironas_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sironas_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sironas_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17678, 1, "Sironas_OnCombat")
RegisterUnitEvent(17678, 2, "Sironas_OnLeaveCombat")
RegisterUnitEvent(17678, 3, "Sironas_OnKilledTarget")
RegisterUnitEvent(17678, 4, "Sironas_OnDied")


--[[ Bloodmyst Isle -- Sunhawk Agent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkAgent_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkAgent_Eviscerate", 10000, 0)
Unit:RegisterEvent("SunhawkAgent_MarkoftheSunhawk", 8000, 0)
Unit:RegisterEvent("SunhawkAgent_SinisterStrike", 6000, 0)
end

function SunhawkAgent_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function SunhawkAgent_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkAgent_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function SunhawkAgent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkAgent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkAgent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17610, 1, "SunhawkAgent_OnCombat")
RegisterUnitEvent(17610, 2, "SunhawkAgent_OnLeaveCombat")
RegisterUnitEvent(17610, 3, "SunhawkAgent_OnKilledTarget")
RegisterUnitEvent(17610, 4, "SunhawkAgent_OnDied")


--[[ Bloodmyst Isle -- Sunhawk Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkDefender_Cleave", 9000, 0)
Unit:RegisterEvent("SunhawkDefender_MarkoftheSunhawk", 7500, 0)
Unit:RegisterEvent("SunhawkDefender_Whirlwind", 6000, 0)
end

function SunhawkDefender_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function SunhawkDefender_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkDefender_Whirlwind(pUnit, Event) 
pUnit:CastSpell(31738) 
end

function SunhawkDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17607, 1, "SunhawkDefender_OnCombat")
RegisterUnitEvent(17607, 2, "SunhawkDefender_OnLeaveCombat")
RegisterUnitEvent(17607, 3, "SunhawkDefender_OnKilledTarget")
RegisterUnitEvent(17607, 4, "SunhawkDefender_OnDied")


--[[ Bloodmyst Isle -- Sunhawk Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkPyromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkPyromancer_Fireball", 8000, 0)
Unit:RegisterEvent("SunhawkPyromancer_Immolate", 6000, 1)
Unit:RegisterEvent("SunhawkPyromancer_MarkoftheSunhawk", 7500, 0)
end

function SunhawkPyromancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function SunhawkPyromancer_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function SunhawkPyromancer_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkPyromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkPyromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkPyromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17608, 1, "SunhawkPyromancer_OnCombat")
RegisterUnitEvent(17608, 2, "SunhawkPyromancer_OnLeaveCombat")
RegisterUnitEvent(17608, 3, "SunhawkPyromancer_OnKilledTarget")
RegisterUnitEvent(17608, 4, "SunhawkPyromancer_OnDied")


--[[ Bloodmyst Isle -- Sunhawk Reclaimer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkReclaimer_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkReclaimer_Fireball", 8000, 0)
Unit:RegisterEvent("SunhawkReclaimer_FrostArmor", 2000, 1)
Unit:RegisterEvent("SunhawkReclaimer_MarkoftheSunhawk", 7500, 0)
end

function SunhawkReclaimer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function SunhawkReclaimer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function SunhawkReclaimer_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkReclaimer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkReclaimer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkReclaimer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17606, 1, "SunhawkReclaimer_OnCombat")
RegisterUnitEvent(17606, 2, "SunhawkReclaimer_OnLeaveCombat")
RegisterUnitEvent(17606, 3, "SunhawkReclaimer_OnKilledTarget")
RegisterUnitEvent(17606, 4, "SunhawkReclaimer_OnDied")


--[[ Bloodmyst Isle -- Sunhawk Saboteur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkSaboteur_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkSaboteur_MarkoftheSunhawk", 7500, 0)
Unit:RegisterEvent("SunhawkSaboteur_MultiShot", 9000, 0)
Unit:RegisterEvent("SunhawkSaboteur_Shoot", 6000, 0)
end

function SunhawkSaboteur_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkSaboteur_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14433, pUnit:GetMainTank()) 
end

function SunhawkSaboteur_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunhawkSaboteur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkSaboteur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkSaboteur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17609, 1, "SunhawkSaboteur_OnCombat")
RegisterUnitEvent(17609, 2, "SunhawkSaboteur_OnLeaveCombat")
RegisterUnitEvent(17609, 3, "SunhawkSaboteur_OnKilledTarget")
RegisterUnitEvent(17609, 4, "SunhawkSaboteur_OnDied")


--[[ Bloodmyst Isle -- Sunhawk Spy.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkSpy_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkSpy_DemoralizingShout", 2000, 0)
Unit:RegisterEvent("SunhawkSpy_HeroicStrike", 6000, 0)
Unit:RegisterEvent("SunhawkSpy_MarkoftheSunhawk", 7500, 0)
end

function SunhawkSpy_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SunhawkSpy_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31827, pUnit:GetMainTank()) 
end

function SunhawkSpy_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkSpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkSpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkSpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17604, 1, "SunhawkSpy_OnCombat")
RegisterUnitEvent(17604, 2, "SunhawkSpy_OnLeaveCombat")
RegisterUnitEvent(17604, 3, "SunhawkSpy_OnKilledTarget")
RegisterUnitEvent(17604, 4, "SunhawkSpy_OnDied")


--[[ Bloodmyst Isle -- Telathion the Impure.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function TelathiontheImpure_OnCombat(Unit, Event)
Unit:RegisterEvent("TelathiontheImpure_ArcaneMissiles", 11000, 0)
Unit:RegisterEvent("TelathiontheImpure_FireBlast", 10000, 0)
Unit:RegisterEvent("TelathiontheImpure_FrostNova", 9000, 0)
Unit:RegisterEvent("TelathiontheImpure_Frostbolt", 8000, 0)
end

function TelathiontheImpure_ArcaneMissiles(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15736, pUnit:GetMainTank()) 
end

function TelathiontheImpure_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function TelathiontheImpure_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function TelathiontheImpure_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function TelathiontheImpure_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TelathiontheImpure_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TelathiontheImpure_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17359, 1, "TelathiontheImpure_OnCombat")
RegisterUnitEvent(17359, 2, "TelathiontheImpure_OnLeaveCombat")
RegisterUnitEvent(17359, 3, "TelathiontheImpure_OnKilledTarget")
RegisterUnitEvent(17359, 4, "TelathiontheImpure_OnDied")


--[[ Bloodmyst Isle -- Thistle Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function ThistleLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleLasher_Lash", 8000, 0)
end

function ThistleLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31286, pUnit:GetMainTank()) 
end

function ThistleLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17343, 1, "ThistleLasher_OnCombat")
RegisterUnitEvent(17343, 2, "ThistleLasher_OnLeaveCombat")
RegisterUnitEvent(17343, 3, "ThistleLasher_OnKilledTarget")
RegisterUnitEvent(17343, 4, "ThistleLasher_OnDied")


--[[ Bloodmyst Isle -- Veridian Broodling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function VeridianBroodling_OnCombat(Unit, Event)
Unit:RegisterEvent("VeridianBroodling_PoisonBolt", 8000, 0)
end

function VeridianBroodling_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21067, pUnit:GetMainTank()) 
end

function VeridianBroodling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VeridianBroodling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VeridianBroodling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17589, 1, "VeridianBroodling_OnCombat")
RegisterUnitEvent(17589, 2, "VeridianBroodling_OnLeaveCombat")
RegisterUnitEvent(17589, 3, "VeridianBroodling_OnKilledTarget")
RegisterUnitEvent(17589, 4, "VeridianBroodling_OnDied")


--[[ Bloodmyst Isle -- Wrathscale Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function WrathscaleMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleMarauder_Pummel", 8000, 0)
end

function WrathscaleMarauder_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function WrathscaleMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17334, 1, "WrathscaleMarauder_OnCombat")
RegisterUnitEvent(17334, 2, "WrathscaleMarauder_OnLeaveCombat")
RegisterUnitEvent(17334, 3, "WrathscaleMarauder_OnKilledTarget")
RegisterUnitEvent(17334, 4, "WrathscaleMarauder_OnDied")


--[[ Bloodmyst Isle -- Wrathscale Shorestalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function WrathscaleShorestalker_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleShorestalker_Strike", 6000, 0)
end

function WrathscaleShorestalker_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathscaleShorestalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleShorestalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleShorestalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17331, 1, "WrathscaleShorestalker_OnCombat")
RegisterUnitEvent(17331, 2, "WrathscaleShorestalker_OnLeaveCombat")
RegisterUnitEvent(17331, 3, "WrathscaleShorestalker_OnKilledTarget")
RegisterUnitEvent(17331, 4, "WrathscaleShorestalker_OnDied")


--[[ Bloodmyst Isle -- Wrathscale Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function WrathscaleSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleSorceress_Frostbolt", 8000, 0)
end

function WrathscaleSorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function WrathscaleSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17336, 1, "WrathscaleSorceress_OnCombat")
RegisterUnitEvent(17336, 2, "WrathscaleSorceress_OnLeaveCombat")
RegisterUnitEvent(17336, 3, "WrathscaleSorceress_OnKilledTarget")
RegisterUnitEvent(17336, 4, "WrathscaleSorceress_OnDied")


--[[ Bloodmyst Isle -- Zarakh.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function Zarakh_OnCombat(Unit, Event)
Unit:RegisterEvent("Zarakh_Poison", 8000, 0)
Unit:RegisterEvent("Zarakh_Web", 10000, 0)
end

function Zarakh_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function Zarakh_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function Zarakh_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zarakh_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zarakh_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17683, 1, "Zarakh_OnCombat")
RegisterUnitEvent(17683, 2, "Zarakh_OnLeaveCombat")
RegisterUnitEvent(17683, 3, "Zarakh_OnKilledTarget")
RegisterUnitEvent(17683, 4, "Zarakh_OnDied")


--[[ Bloodmyst Isle -- Zarakh.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function Zevrax_OnCombat(Unit, Event)
Unit:RegisterEvent("Zevrax_Corruption", 2000, 1)
Unit:RegisterEvent("Zevrax_CurseofWeakness", 3000, 1)
Unit:RegisterEvent("Zevrax_ShadowBolt", 8000, 0)
Unit:RegisterEvent("Zevrax_Immolate", 6000, 1)
end

function Zevrax_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21068, pUnit:GetMainTank()) 
end

function Zevrax_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17227, pUnit:GetMainTank()) 
end

function Zevrax_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function Zevrax_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function Zevrax_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zevrax_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zevrax_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17494, 1, "Zevrax_OnCombat")
RegisterUnitEvent(17494, 2, "Zevrax_OnLeaveCombat")
RegisterUnitEvent(17494, 3, "Zevrax_OnKilledTarget")
RegisterUnitEvent(17494, 4, "Zevrax_OnDied")




--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS MikeBeck 
    MikeBeck, Novembner, 28th, 2008. --]]