--[[ Ashenvale -- Akkrilus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Akkrilus_OnCombat(Unit, Event)
Unit:RegisterEvent("Akkrilus_FireShieldII", 1000, 1)
Unit:RegisterEvent("Akkrilus_Immolate", 7000, 0)
end

function Akkrilus_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function Akkrilus_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function Akkrilus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Akkrilus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Akkrilus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3773, 1, "Akkrilus_OnCombat")
RegisterUnitEvent(3773, 2, "Akkrilus_OnLeaveCombat")
RegisterUnitEvent(3773, 3, "Akkrilus_OnKilledTarget")
RegisterUnitEvent(3773, 4, "Akkrilus_OnDied")


--[[ Ashenvale -- Apothecary Falthis.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ApothecaryFalthis_OnCombat(Unit, Event)
Unit:RegisterEvent("ApothecaryFalthis_ShadowBolt", 8000, 0)
end

function ApothecaryFalthis_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function ApothecaryFalthis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ApothecaryFalthis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ApothecaryFalthis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3735, 1, "ApothecaryFalthis_OnCombat")
RegisterUnitEvent(3735, 2, "ApothecaryFalthis_OnLeaveCombat")
RegisterUnitEvent(3735, 3, "ApothecaryFalthis_OnKilledTarget")
RegisterUnitEvent(3735, 4, "ApothecaryFalthis_OnDied")


--[[ Ashenvale -- Ashenvale Outrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function AshenvaleOutrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("AshenvaleOutrunner_ScorpidSting", 8000, 0)
Unit:RegisterEvent("AshenvaleOutrunner_Shoot", 6000, 0)
Unit:RegisterEvent("AshenvaleOutrunner_SnapKick", 10000, 0)
end

function AshenvaleOutrunner_ScorpidSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18545, pUnit:GetMainTank()) 
end

function AshenvaleOutrunner_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function AshenvaleOutrunner_SnapKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8646, pUnit:GetMainTank()) 
end

function AshenvaleOutrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AshenvaleOutrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AshenvaleOutrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12856, 1, "AshenvaleOutrunner_OnCombat")
RegisterUnitEvent(12856, 2, "AshenvaleOutrunner_OnLeaveCombat")
RegisterUnitEvent(12856, 3, "AshenvaleOutrunner_OnKilledTarget")
RegisterUnitEvent(12856, 4, "AshenvaleOutrunner_OnDied")


--[[ Ashenvale -- Befouled Water Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BefouledWaterElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("BefouledWaterElemental_FoulChill", 1000, 2)
Unit:RegisterEvent("BefouledWaterElemental_Frostbolt", 8000, 0)
end

function BefouledWaterElemental_FoulChill(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6873, pUnit:GetMainTank()) 
end

function BefouledWaterElemental_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function BefouledWaterElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BefouledWaterElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BefouledWaterElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3917, 1, "BefouledWaterElemental_OnCombat")
RegisterUnitEvent(3917, 2, "BefouledWaterElemental_OnLeaveCombat")
RegisterUnitEvent(3917, 3, "BefouledWaterElemental_OnKilledTarget")
RegisterUnitEvent(3917, 4, "BefouledWaterElemental_OnDied")


--[[ Ashenvale -- Bleakheart Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BleakheartHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BleakheartHellcaller_SummonImp", 1000, 1)
end

function BleakheartHellcaller_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function BleakheartHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BleakheartHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BleakheartHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3771, 1, "BleakheartHellcaller_OnCombat")
RegisterUnitEvent(3771, 2, "BleakheartHellcaller_OnLeaveCombat")
RegisterUnitEvent(3771, 3, "BleakheartHellcaller_OnKilledTarget")
RegisterUnitEvent(3771, 4, "BleakheartHellcaller_OnDied")


--[[ Ashenvale -- Bleakheart Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BleakheartShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("BleakheartShadowstalker_ShadowstalkerSlash", 8000, 0)
end

function BleakheartShadowstalker_ShadowstalkerSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6927, pUnit:GetMainTank()) 
end

function BleakheartShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BleakheartShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BleakheartShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3770, 1, "BleakheartShadowstalker_OnCombat")
RegisterUnitEvent(3770, 2, "BleakheartShadowstalker_OnLeaveCombat")
RegisterUnitEvent(3770, 3, "BleakheartShadowstalker_OnKilledTarget")
RegisterUnitEvent(3770, 4, "BleakheartShadowstalker_OnDied")


--[[ Ashenvale -- Branch Snapper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BranchSnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("BranchSnapper_DeadlyPoison", 10000, 0)
Unit:RegisterEvent("BranchSnapper_KnockAway", 8000, 0)
end

function BranchSnapper_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function BranchSnapper_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10101, pUnit:GetMainTank()) 
end

function BranchSnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BranchSnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BranchSnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10641, 1, "BranchSnapper_OnCombat")
RegisterUnitEvent(10641, 2, "BranchSnapper_OnLeaveCombat")
RegisterUnitEvent(10641, 3, "BranchSnapper_OnKilledTarget")
RegisterUnitEvent(10641, 4, "BranchSnapper_OnDied")


--[[ Ashenvale -- Cenarion Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function CenarionProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionProtector_BearForm", 1000, 1)
Unit:RegisterEvent("CenarionProtector_DemoralizingRoar", 8000, 0)
end

function CenarionProtector_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function CenarionProtector_DemoralizingRoar(pUnit, Event) 
pUnit:CastSpell(15727) 
end

function CenarionProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3797, 1, "CenarionProtector_OnCombat")
RegisterUnitEvent(3797, 2, "CenarionProtector_OnLeaveCombat")
RegisterUnitEvent(3797, 3, "CenarionProtector_OnKilledTarget")
RegisterUnitEvent(3797, 4, "CenarionProtector_OnDied")


--[[ Ashenvale -- Cenarion Vindicator.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function CenarionVindicator_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionVindicator_Moonfire", 7000, 0)
end

function CenarionVindicator_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function CenarionVindicator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionVindicator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionVindicator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3833, 1, "CenarionVindicator_OnCombat")
RegisterUnitEvent(3833, 2, "CenarionVindicator_OnLeaveCombat")
RegisterUnitEvent(3833, 3, "CenarionVindicator_OnKilledTarget")
RegisterUnitEvent(3833, 4, "CenarionVindicator_OnDied")


--[[ Ashenvale -- Crazed Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function CrazedAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CrazedAncient_CurseofThorns", 3000, 2)
end

function CrazedAncient_CurseofThorns(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6909, pUnit:GetMainTank()) 
end

function CrazedAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrazedAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrazedAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3834, 1, "CrazedAncient_OnCombat")
RegisterUnitEvent(3834, 2, "CrazedAncient_OnLeaveCombat")
RegisterUnitEvent(3834, 3, "CrazedAncient_OnKilledTarget")
RegisterUnitEvent(3834, 4, "CrazedAncient_OnDied")


--[[ Ashenvale -- Dal Bloodclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DalBloodclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("DalBloodclaw_Disarm", 9000, 0)
Unit:RegisterEvent("DalBloodclaw_Revenge", 6000, 0)
end

function DalBloodclaw_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function DalBloodclaw_Revenge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12170, pUnit:GetMainTank()) 
end

function DalBloodclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DalBloodclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DalBloodclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3987, 1, "DalBloodclaw_OnCombat")
RegisterUnitEvent(3987, 2, "DalBloodclaw_OnLeaveCombat")
RegisterUnitEvent(3987, 3, "DalBloodclaw_OnKilledTarget")
RegisterUnitEvent(3987, 4, "DalBloodclaw_OnDied")


--[[ Ashenvale -- Dark Strand Adept.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkStrandAdept_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandAdept_SummonVoidwalker", 1000, 1)
Unit:RegisterEvent("DarkStrandAdept_ShadowBolt", 8000, 0)
end

function DarkStrandAdept_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function DarkStrandAdept_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function DarkStrandAdept_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandAdept_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandAdept_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3728, 1, "DarkStrandAdept_OnCombat")
RegisterUnitEvent(3728, 2, "DarkStrandAdept_OnLeaveCombat")
RegisterUnitEvent(3728, 3, "DarkStrandAdept_OnKilledTarget")
RegisterUnitEvent(3728, 4, "DarkStrandAdept_OnDied")


--[[ Ashenvale -- Dark Strand Cultist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkStrandCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandCultist_SummonImp", 1000, 1)
Unit:RegisterEvent("DarkStrandCultist_Corruption", 2000, 2)
Unit:RegisterEvent("DarkStrandCultist_ShadowBolt", 8000, 0)
end

function DarkStrandCultist_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function DarkStrandCultist_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6222, pUnit:GetMainTank()) 
end

function DarkStrandCultist_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function DarkStrandCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3725, 1, "DarkStrandCultist_OnCombat")
RegisterUnitEvent(3725, 2, "DarkStrandCultist_OnLeaveCombat")
RegisterUnitEvent(3725, 3, "DarkStrandCultist_OnKilledTarget")
RegisterUnitEvent(3725, 4, "DarkStrandCultist_OnDied")


--[[ Ashenvale -- Dark Strand Enforcer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkStrandEnforcer_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandEnforcer_Enrage", 10000, 1)
end

function DarkStrandEnforcer_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function DarkStrandEnforcer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandEnforcer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandEnforcer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3727, 1, "DarkStrandEnforcer_OnCombat")
RegisterUnitEvent(3727, 2, "DarkStrandEnforcer_OnLeaveCombat")
RegisterUnitEvent(3727, 3, "DarkStrandEnforcer_OnKilledTarget")
RegisterUnitEvent(3727, 4, "DarkStrandEnforcer_OnDied")


--[[ Ashenvale -- Dreamstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Dreamstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Dreamstalker_CorrosiveAcidBreath", 6000, 0)
Unit:RegisterEvent("Dreamstalker_Sleep", 14000, 0)
end

function Dreamstalker_CorrosiveAcidBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20667, pUnit:GetMainTank()) 
end

function Dreamstalker_Sleep(pUnit, Event) 
pUnit:CastSpell(20669) 
end

function Dreamstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Dreamstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Dreamstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12498, 1, "Dreamstalker_OnCombat")
RegisterUnitEvent(12498, 2, "Dreamstalker_OnLeaveCombat")
RegisterUnitEvent(12498, 3, "Dreamstalker_OnKilledTarget")
RegisterUnitEvent(12498, 4, "Dreamstalker_OnDied")


--[[ Ashenvale -- Duriel Moonfire.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DurielMoonfire_OnCombat(Unit, Event)
Unit:RegisterEvent("DurielMoonfire_Knockdown", 8000, 0)
Unit:RegisterEvent("DurielMoonfire_PierceArmor", 6000, 0)
end

function DurielMoonfire_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function DurielMoonfire_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function DurielMoonfire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DurielMoonfire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DurielMoonfire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12860, 1, "DurielMoonfire_OnCombat")
RegisterUnitEvent(12860, 2, "DurielMoonfire_OnLeaveCombat")
RegisterUnitEvent(12860, 3, "DurielMoonfire_OnKilledTarget")
RegisterUnitEvent(12860, 4, "DurielMoonfire_OnDied")


--[[ Ashenvale -- Eckalom.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Eckalom_OnCombat(Unit, Event)
Unit:RegisterEvent("Eckalom_Freeze", 12000, 0)
Unit:RegisterEvent("Eckalom_FrostShock", 8000, 0)
end

function Eckalom_Freeze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5276, pUnit:GetMainTank()) 
end

function Eckalom_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21030, pUnit:GetMainTank()) 
end

function Eckalom_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Eckalom_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Eckalom_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10642, 1, "Eckalom_OnCombat")
RegisterUnitEvent(10642, 2, "Eckalom_OnLeaveCombat")
RegisterUnitEvent(10642, 3, "Eckalom_OnKilledTarget")
RegisterUnitEvent(10642, 4, "Eckalom_OnDied")


--[[ Ashenvale -- Elder Shadowhorn Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ElderShadowhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderShadowhornStag_ShadowhornCharge", 8000, 0)
end

function ElderShadowhornStag_ShadowhornCharge(pUnit, Event) 
pUnit:CastSpell(6921) 
end

function ElderShadowhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderShadowhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderShadowhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3818, 1, "ElderShadowhornStag_OnCombat")
RegisterUnitEvent(3818, 2, "ElderShadowhornStag_OnLeaveCombat")
RegisterUnitEvent(3818, 3, "ElderShadowhornStag_OnKilledTarget")
RegisterUnitEvent(3818, 4, "ElderShadowhornStag_OnDied")


--[[ Ashenvale -- Emeraldon Boughguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function EmeraldonBoughguard_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldonBoughguard_Cleave", 6000, 0)
Unit:RegisterEvent("EmeraldonBoughguard_Fixate", 8000, 0)
Unit:RegisterEvent("EmeraldonBoughguard_MortalStrike", 10000, 0)
end

function EmeraldonBoughguard_Cleave(pUnit, Event) 
pUnit:CastSpell(20666) 
end

function EmeraldonBoughguard_Fixate(pUnit, Event) 
pUnit:CastSpell(12021) 
end

function EmeraldonBoughguard_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15708, pUnit:GetMainTank()) 
end

function EmeraldonBoughguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldonBoughguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldonBoughguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12474, 1, "EmeraldonBoughguard_OnCombat")
RegisterUnitEvent(12474, 2, "EmeraldonBoughguard_OnLeaveCombat")
RegisterUnitEvent(12474, 3, "EmeraldonBoughguard_OnKilledTarget")
RegisterUnitEvent(12474, 4, "EmeraldonBoughguard_OnDied")


--[[ Ashenvale -- Emeraldon Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function EmeraldonOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldonOracle_Regrowth", 6000, 1)
Unit:RegisterEvent("EmeraldonOracle_Rejuvenation", 12000, 0)
end

function EmeraldonOracle_Regrowth(pUnit, Event) 
pUnit:CastSpell(20665) 
end

function EmeraldonOracle_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(20664) 
end

function EmeraldonOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldonOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldonOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12476, 1, "EmeraldonOracle_OnCombat")
RegisterUnitEvent(12476, 2, "EmeraldonOracle_OnLeaveCombat")
RegisterUnitEvent(12476, 3, "EmeraldonOracle_OnKilledTarget")
RegisterUnitEvent(12476, 4, "EmeraldonOracle_OnDied")


--[[ Ashenvale -- Emeraldon Tree Warder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function EmeraldonTreeWarder_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldonTreeWarder_FaerieFire", 2000, 2)
Unit:RegisterEvent("EmeraldonTreeWarder_EntanglingRoots", 8000, 0)
end

function EmeraldonTreeWarder_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20656, pUnit:GetMainTank()) 
end

function EmeraldonTreeWarder_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20654, pUnit:GetMainTank()) 
end

function EmeraldonTreeWarder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldonTreeWarder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldonTreeWarder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12475, 1, "EmeraldonTreeWarder_OnCombat")
RegisterUnitEvent(12475, 2, "EmeraldonTreeWarder_OnLeaveCombat")
RegisterUnitEvent(12475, 3, "EmeraldonTreeWarder_OnKilledTarget")
RegisterUnitEvent(12475, 4, "EmeraldonTreeWarder_OnDied")


--[[ Ashenvale -- Felmusk Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskFelsworn_OverwhelmingStench", 10000, 0)
end

function FelmuskFelsworn_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3762, 1, "FelmuskFelsworn_OnCombat")
RegisterUnitEvent(3762, 2, "FelmuskFelsworn_OnLeaveCombat")
RegisterUnitEvent(3762, 3, "FelmuskFelsworn_OnKilledTarget")
RegisterUnitEvent(3762, 4, "FelmuskFelsworn_OnDied")


--[[ Ashenvale -- Felmusk Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskRogue_OverwhelmingStench", 10000, 0)
end

function FelmuskRogue_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3759, 1, "FelmuskRogue_OnCombat")
RegisterUnitEvent(3759, 2, "FelmuskRogue_OnLeaveCombat")
RegisterUnitEvent(3759, 3, "FelmuskRogue_OnKilledTarget")
RegisterUnitEvent(3759, 4, "FelmuskRogue_OnDied")


--[[ Ashenvale -- Felmusk Satyr.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskSatyr_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskSatyr_OverwhelmingStench", 10000, 0)
end

function FelmuskSatyr_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskSatyr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskSatyr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskSatyr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3758, 1, "FelmuskSatyr_OnCombat")
RegisterUnitEvent(3758, 2, "FelmuskSatyr_OnLeaveCombat")
RegisterUnitEvent(3758, 3, "FelmuskSatyr_OnKilledTarget")
RegisterUnitEvent(3758, 4, "FelmuskSatyr_OnDied")


--[[ Ashenvale -- Felmusk Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskShadowstalker_OverwhelmingStench", 10000, 0)
end

function FelmuskShadowstalker_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3763, 1, "FelmuskShadowstalker_OnCombat")
RegisterUnitEvent(3763, 2, "FelmuskShadowstalker_OnLeaveCombat")
RegisterUnitEvent(3763, 3, "FelmuskShadowstalker_OnKilledTarget")
RegisterUnitEvent(3763, 4, "FelmuskShadowstalker_OnDied")


--[[ Ashenvale -- Felslayer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Felslayer_OnCombat(Unit, Event)
Unit:RegisterEvent("Felslayer_ManaBurn", 8000, 0)
end

function Felslayer_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function Felslayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Felslayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Felslayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3774, 1, "Felslayer_OnCombat")
RegisterUnitEvent(3774, 2, "Felslayer_OnLeaveCombat")
RegisterUnitEvent(3774, 3, "Felslayer_OnKilledTarget")
RegisterUnitEvent(3774, 4, "Felslayer_OnDied")


--[[ Ashenvale -- Forsaken Dark Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenDarkStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenDarkStalker_Throw", 6000, 0)
end

function ForsakenDarkStalker_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function ForsakenDarkStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenDarkStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenDarkStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3808, 1, "ForsakenDarkStalker_OnCombat")
RegisterUnitEvent(3808, 2, "ForsakenDarkStalker_OnLeaveCombat")
RegisterUnitEvent(3808, 3, "ForsakenDarkStalker_OnKilledTarget")
RegisterUnitEvent(3808, 4, "ForsakenDarkStalker_OnDied")


--[[ Ashenvale --  Forsaken Herbalist.lua.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenHerbalist_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenHerbalist_ContagionofRot", 2000, 2)
end

function ForsakenHerbalist_ContagionofRot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7102, pUnit:GetMainTank()) 
end

function ForsakenHerbalist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenHerbalist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenHerbalist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3733, 1, "ForsakenHerbalist_OnCombat")
RegisterUnitEvent(3733, 2, "ForsakenHerbalist_OnLeaveCombat")
RegisterUnitEvent(3733, 3, "ForsakenHerbalist_OnKilledTarget")
RegisterUnitEvent(3733, 4, "ForsakenHerbalist_OnDied")


--[[ Ashenvale -- Forsaken Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenSeeker_Heal", 12000, 0)
Unit:RegisterEvent("ForsakenSeeker_HolySmite", 7000, 0)
end

function ForsakenSeeker_Heal(pUnit, Event) 
pUnit:CastSpell(2054) 
end

function ForsakenSeeker_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function ForsakenSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3732, 1, "ForsakenSeeker_OnCombat")
RegisterUnitEvent(3732, 2, "ForsakenSeeker_OnLeaveCombat")
RegisterUnitEvent(3732, 3, "ForsakenSeeker_OnKilledTarget")
RegisterUnitEvent(3732, 4, "ForsakenSeeker_OnDied")


--[[ Ashenvale -- Forsaken Thug.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenThug_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenThug_Backhand", 7000, 0)
end

function ForsakenThug_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function ForsakenThug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenThug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenThug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3734, 1, "ForsakenThug_OnCombat")
RegisterUnitEvent(3734, 2, "ForsakenThug_OnLeaveCombat")
RegisterUnitEvent(3734, 3, "ForsakenThug_OnKilledTarget")
RegisterUnitEvent(3734, 4, "ForsakenThug_OnDied")


--[[ Ashenvale -- Foulweald Den Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdDenWatcher_Thrash", 5000, 0)
end

function FoulwealdDenWatcher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function FoulwealdDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3746, 1, "FoulwealdDenWatcher_OnCombat")
RegisterUnitEvent(3746, 2, "FoulwealdDenWatcher_OnLeaveCombat")
RegisterUnitEvent(3746, 3, "FoulwealdDenWatcher_OnKilledTarget")
RegisterUnitEvent(3746, 4, "FoulwealdDenWatcher_OnDied")


--[[ Ashenvale -- Foulweald Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdPathfinder_Shoot", 6000, 0)
end

function FoulwealdPathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function FoulwealdPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3745, 1, "FoulwealdPathfinder_OnCombat")
RegisterUnitEvent(3745, 2, "FoulwealdPathfinder_OnLeaveCombat")
RegisterUnitEvent(3745, 3, "FoulwealdPathfinder_OnKilledTarget")
RegisterUnitEvent(3745, 4, "FoulwealdPathfinder_OnDied")


--[[ Ashenvale -- Foulweald Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdShaman_StrengthofEarthTotem", 2000, 1)
end

function FoulwealdShaman_StrengthofEarthTotem(pUnit, Event) 
pUnit:CastSpell(8160) 
end

function FoulwealdShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3748, 1, "FoulwealdShaman_OnCombat")
RegisterUnitEvent(3748, 2, "FoulwealdShaman_OnLeaveCombat")
RegisterUnitEvent(3748, 3, "FoulwealdShaman_OnKilledTarget")
RegisterUnitEvent(3748, 4, "FoulwealdShaman_OnDied")


--[[ Ashenvale -- Foulweald Totemic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdTotemic_SearingTotem", 2000, 1)
end

function FoulwealdTotemic_SearingTotem(pUnit, Event) 
pUnit:CastSpell(6363) 
end

function FoulwealdTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3750, 1, "FoulwealdTotemic_OnCombat")
RegisterUnitEvent(3750, 2, "FoulwealdTotemic_OnLeaveCombat")
RegisterUnitEvent(3750, 3, "FoulwealdTotemic_OnKilledTarget")
RegisterUnitEvent(3750, 4, "FoulwealdTotemic_OnDied")


--[[ Ashenvale -- Foulweald Ursa.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdUrsa_Hamstring", 10000, 0)
end

function FoulwealdUrsa_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function FoulwealdUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3749, 1, "FoulwealdUrsa_OnCombat")
RegisterUnitEvent(3749, 2, "FoulwealdUrsa_OnLeaveCombat")
RegisterUnitEvent(3749, 3, "FoulwealdUrsa_OnKilledTarget")
RegisterUnitEvent(3749, 4, "FoulwealdUrsa_OnDied")


--[[ Ashenvale -- Frostwave Lieutenant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FrostwaveLieutenant_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostwaveLieutenant_FrostNova", 10000, 0)
Unit:RegisterEvent("FrostwaveLieutenant_FrostShock", 8000, 0)
end

function FrostwaveLieutenant_FrostNova(pUnit, Event) 
pUnit:CastSpell(122) 
end

function FrostwaveLieutenant_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8056, pUnit:GetMainTank()) 
end

function FrostwaveLieutenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostwaveLieutenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostwaveLieutenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26116, 1, "FrostwaveLieutenant_OnCombat")
RegisterUnitEvent(26116, 2, "FrostwaveLieutenant_OnLeaveCombat")
RegisterUnitEvent(26116, 3, "FrostwaveLieutenant_OnKilledTarget")
RegisterUnitEvent(26116, 4, "FrostwaveLieutenant_OnDied")


--[[ Ashenvale -- Ghostpaw Howler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function GhostpawHowler_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostpawHowler_BloodHowl", 1000, 0)
end

function GhostpawHowler_BloodHowl(pUnit, Event) 
pUnit:CastSpell(3264) 
end

function GhostpawHowler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostpawHowler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostpawHowler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3824, 1, "GhostpawHowler_OnCombat")
RegisterUnitEvent(3824, 2, "GhostpawHowler_OnLeaveCombat")
RegisterUnitEvent(3824, 3, "GhostpawHowler_OnKilledTarget")
RegisterUnitEvent(3824, 4, "GhostpawHowler_OnDied")


--[[ Ashenvale -- Gorgannon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Gorgannon_OnCombat(Unit, Event)
Unit:RegisterEvent("Gorgannon_Knockdown", 8000, 0)
Unit:RegisterEvent("Gorgannon_ShadowBolt", 10000, 0)
end

function Gorgannon_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function Gorgannon_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function Gorgannon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gorgannon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gorgannon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17300, 1, "Gorgannon_OnCombat")
RegisterUnitEvent(17300, 2, "Gorgannon_OnLeaveCombat")
RegisterUnitEvent(17300, 3, "Gorgannon_OnKilledTarget")
RegisterUnitEvent(17300, 4, "Gorgannon_OnDied")


--[[ Ashenvale -- Horde Deforester.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function HordeDeforester_OnCombat(Unit, Event)
Unit:RegisterEvent("HordeDeforester_SunderArmor", 6000, 0)
end

function HordeDeforester_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11971, pUnit:GetMainTank()) 
end

function HordeDeforester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HordeDeforester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HordeDeforester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11681, 1, "HordeDeforester_OnCombat")
RegisterUnitEvent(11681, 2, "HordeDeforester_OnLeaveCombat")
RegisterUnitEvent(11681, 3, "HordeDeforester_OnKilledTarget")
RegisterUnitEvent(11681, 4, "HordeDeforester_OnDied")


--[[ Ashenvale -- Horde Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function HordeScout_OnCombat(Unit, Event)
Unit:RegisterEvent("HordeScout_ScorpidSting", 8000, 0)
Unit:RegisterEvent("HordeScout_Shoot", 6000, 0)
end

function HordeScout_ScorpidSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18545, pUnit:GetMainTank()) 
end

function HordeScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function HordeScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HordeScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HordeScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11680, 1, "HordeScout_OnCombat")
RegisterUnitEvent(11680, 2, "HordeScout_OnLeaveCombat")
RegisterUnitEvent(11680, 3, "HordeScout_OnKilledTarget")
RegisterUnitEvent(11680, 4, "HordeScout_OnDied")


--[[ Ashenvale -- Ilkrud Magthrull.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function IlkrudMagthrull_OnCombat(Unit, Event)
Unit:RegisterEvent("IlkrudMagthrull_IlkrudsGuardians", 1000, 1)
Unit:RegisterEvent("IlkrudMagthrull_ShadowBolt", 8000, 0)
end

function IlkrudMagthrull_IlkrudsGuardians(pUnit, Event) 
pUnit:CastSpell(6487) 
end

function IlkrudMagthrull_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function IlkrudMagthrull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IlkrudMagthrull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IlkrudMagthrull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3664, 1, "IlkrudMagthrull_OnCombat")
RegisterUnitEvent(3664, 2, "IlkrudMagthrull_OnLeaveCombat")
RegisterUnitEvent(3664, 3, "IlkrudMagthrull_OnKilledTarget")
RegisterUnitEvent(3664, 4, "IlkrudMagthrull_OnDied")


--[[ Ashenvale -- Keeper Ordanus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function KeeperOrdanus_OnCombat(Unit, Event)
Unit:RegisterEvent("KeeperOrdanus_EntanglingRoots", 11000, 0)
Unit:RegisterEvent("KeeperOrdanus_LightningBolt", 8000, 0)
end

function KeeperOrdanus_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function KeeperOrdanus_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function KeeperOrdanus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KeeperOrdanus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KeeperOrdanus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4273, 1, "KeeperOrdanus_OnCombat")
RegisterUnitEvent(4273, 2, "KeeperOrdanus_OnLeaveCombat")
RegisterUnitEvent(4273, 3, "KeeperOrdanus_OnKilledTarget")
RegisterUnitEvent(4273, 4, "KeeperOrdanus_OnDied")


--[[ Ashenvale -- Kerlonian Evershade.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function KerlonianEvershade_OnCombat(Unit, Event)
Unit:RegisterEvent("KerlonianEvershade_BearForm", 1000, 1)
end

function KerlonianEvershade_BearForm(pUnit, Event) 
pUnit:CastSpell(18309) 
end

function KerlonianEvershade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KerlonianEvershade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KerlonianEvershade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11218, 1, "KerlonianEvershade_OnCombat")
RegisterUnitEvent(11218, 2, "KerlonianEvershade_OnLeaveCombat")
RegisterUnitEvent(11218, 3, "KerlonianEvershade_OnKilledTarget")
RegisterUnitEvent(11218, 4, "KerlonianEvershade_OnDied")


--[[ Ashenvale -- Lady Vespia.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LadyVespia_OnCombat(Unit, Event)
Unit:RegisterEvent("LadyVespia_AquaJet", 6000, 0)
Unit:RegisterEvent("LadyVespia_FrostboltVolley", 8000, 0)
end

function LadyVespia_AquaJet(pUnit, Event) 
pUnit:CastSpell(13586) 
end

function LadyVespia_FrostboltVolley(pUnit, Event) 
pUnit:CastSpell(8398) 
end

function LadyVespia_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LadyVespia_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LadyVespia_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10559, 1, "LadyVespia_OnCombat")
RegisterUnitEvent(10559, 2, "LadyVespia_OnLeaveCombat")
RegisterUnitEvent(10559, 3, "LadyVespia_OnKilledTarget")
RegisterUnitEvent(10559, 4, "LadyVespia_OnDied")


--[[ Ashenvale -- Lesser Felguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LesserFelguard_OnCombat(Unit, Event)
Unit:RegisterEvent("LesserFelguard_FireShieldII", 1000, 1)
Unit:RegisterEvent("LesserFelguard_Knockdown", 7000, 0)
end

function LesserFelguard_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function LesserFelguard_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18812, pUnit:GetMainTank()) 
end

function LesserFelguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LesserFelguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LesserFelguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3772, 1, "LesserFelguard_OnCombat")
RegisterUnitEvent(3772, 2, "LesserFelguard_OnLeaveCombat")
RegisterUnitEvent(3772, 3, "LesserFelguard_OnKilledTarget")
RegisterUnitEvent(3772, 4, "LesserFelguard_OnDied")


--[[ Ashenvale -- Mannoroc Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MannorocLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("MannorocLasher_ShadowBolt", 8000, 0)
end

function MannorocLasher_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function MannorocLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MannorocLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MannorocLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11697, 1, "MannorocLasher_OnCombat")
RegisterUnitEvent(11697, 2, "MannorocLasher_OnLeaveCombat")
RegisterUnitEvent(11697, 3, "MannorocLasher_OnKilledTarget")
RegisterUnitEvent(11697, 4, "MannorocLasher_OnDied")


--[[ Ashenvale -- Mastok Wrilehiss.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MastokWrilehiss_OnCombat(Unit, Event)
Unit:RegisterEvent("MastokWrilehiss_Cleave", 8000, 0)
Unit:RegisterEvent("MastokWrilehiss_Enrage", 12000, 0)
Unit:RegisterEvent("MastokWrilehiss_PiercingHowl", 10000, 0)
end

function MastokWrilehiss_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function MastokWrilehiss_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function MastokWrilehiss_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(23600) 
end

function MastokWrilehiss_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MastokWrilehiss_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MastokWrilehiss_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12737, 1, "MastokWrilehiss_OnCombat")
RegisterUnitEvent(12737, 2, "MastokWrilehiss_OnLeaveCombat")
RegisterUnitEvent(12737, 3, "MastokWrilehiss_OnKilledTarget")
RegisterUnitEvent(12737, 4, "MastokWrilehiss_OnDied")


--[[ Ashenvale -- Mavoris Cloudsbreak.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MavorisCloudsbreak_OnCombat(Unit, Event)
Unit:RegisterEvent("MavorisCloudsbreak_LightningCloud", 10000, 0)
end

function MavorisCloudsbreak_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function MavorisCloudsbreak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MavorisCloudsbreak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MavorisCloudsbreak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3942, 1, "MavorisCloudsbreak_OnCombat")
RegisterUnitEvent(3942, 2, "MavorisCloudsbreak_OnLeaveCombat")
RegisterUnitEvent(3942, 3, "MavorisCloudsbreak_OnKilledTarget")
RegisterUnitEvent(3942, 4, "MavorisCloudsbreak_OnDied")


--[[ Ashenvale -- Mist Howler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MistHowler_OnCombat(Unit, Event)
Unit:RegisterEvent("MistHowler_Rend", 10000, 0)
Unit:RegisterEvent("MistHowler_TendonRip", 8000, 0)
Unit:RegisterEvent("MistHowler_TerrifyingHowl", 11000, 0)
end

function MistHowler_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function MistHowler_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function MistHowler_TerrifyingHowl(pUnit, Event) 
pUnit:CastSpell(8715) 
end

function MistHowler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistHowler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistHowler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10644, 1, "MistHowler_OnCombat")
RegisterUnitEvent(10644, 2, "MistHowler_OnLeaveCombat")
RegisterUnitEvent(10644, 3, "MistHowler_OnKilledTarget")
RegisterUnitEvent(10644, 4, "MistHowler_OnDied")


--[[ Ashenvale -- Mugglefin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Mugglefin_OnCombat(Unit, Event)
Unit:RegisterEvent("Mugglefin_VolatileInfection", 10000, 0)
end

function Mugglefin_VolatileInfection(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3584, pUnit:GetMainTank()) 
end

function Mugglefin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Mugglefin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Mugglefin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10643, 1, "Mugglefin_OnCombat")
RegisterUnitEvent(10643, 2, "Mugglefin_OnLeaveCombat")
RegisterUnitEvent(10643, 3, "Mugglefin_OnKilledTarget")
RegisterUnitEvent(10643, 4, "Mugglefin_OnDied")


--[[ Ashenvale -- Mystlash Hydra.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MystlashHydra_OnCombat(Unit, Event)
Unit:RegisterEvent("MystlashHydra_VenomSpit", 8000, 0)
end

function MystlashHydra_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6917, pUnit:GetMainTank()) 
end

function MystlashHydra_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystlashHydra_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystlashHydra_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3721, 1, "MystlashHydra_OnCombat")
RegisterUnitEvent(3721, 2, "MystlashHydra_OnLeaveCombat")
RegisterUnitEvent(3721, 3, "MystlashHydra_OnKilledTarget")
RegisterUnitEvent(3721, 4, "MystlashHydra_OnDied")


--[[ Ashenvale -- Oakpaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Oakpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Oakpaw_Rejuvenation", 8000, 0)
end

function Oakpaw_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function Oakpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Oakpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Oakpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10640, 1, "Oakpaw_OnCombat")
RegisterUnitEvent(10640, 2, "Oakpaw_OnLeaveCombat")
RegisterUnitEvent(10640, 3, "Oakpaw_OnKilledTarget")
RegisterUnitEvent(10640, 4, "Oakpaw_OnDied")


--[[ Ashenvale -- Overseer Gorthak.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function OverseerGorthak_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerGorthak_Cleave", 8000, 0)
Unit:RegisterEvent("OverseerGorthak_ShieldBash", 6000, 0)
end

function OverseerGorthak_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function OverseerGorthak_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11972, pUnit:GetMainTank()) 
end

function OverseerGorthak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerGorthak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerGorthak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17304, 1, "OverseerGorthak_OnCombat")
RegisterUnitEvent(17304, 2, "OverseerGorthak_OnLeaveCombat")
RegisterUnitEvent(17304, 3, "OverseerGorthak_OnKilledTarget")
RegisterUnitEvent(17304, 4, "OverseerGorthak_OnDied")


--[[ Ashenvale -- Phantim.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Phantim_OnCombat(Unit, Event)
Unit:RegisterEvent("Phantim_CorrosiveAcidBreath", 8000, 0)
end

function Phantim_CorrosiveAcidBreath(pUnit, Event) 
pUnit:CastSpell(20667) 
end

function Phantim_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Phantim_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Phantim_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5314, 1, "Phantim_OnCombat")
RegisterUnitEvent(5314, 2, "Phantim_OnLeaveCombat")
RegisterUnitEvent(5314, 3, "Phantim_OnKilledTarget")
RegisterUnitEvent(5314, 4, "Phantim_OnDied")


--[[ Ashenvale -- Prince Raze.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function PrinceRaze_OnCombat(Unit, Event)
Unit:RegisterEvent("PrinceRaze_GiftoftheXavian", 15000, 1)
Unit:RegisterEvent("PrinceRaze_Fireball", 8000, 0)
Unit:RegisterEvent("PrinceRaze_FireNova", 6000, 0)
Unit:RegisterEvent("PrinceRaze_ChargedArcaneBolt", 1000, 1)
end

function PrinceRaze_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function PrinceRaze_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function PrinceRaze_FireNova(pUnit, Event) 
pUnit:CastSpell(11969) 
end

function PrinceRaze_ChargedArcaneBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16570, pUnit:GetMainTank()) 
end

function PrinceRaze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PrinceRaze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PrinceRaze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10647, 1, "PrinceRaze_OnCombat")
RegisterUnitEvent(10647, 2, "PrinceRaze_OnLeaveCombat")
RegisterUnitEvent(10647, 3, "PrinceRaze_OnKilledTarget")
RegisterUnitEvent(10647, 4, "PrinceRaze_OnDied")


--[[ Ashenvale -- Raene Wolfrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RaeneWolfrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RaeneWolfrunner_Net", 10000, 0)
Unit:RegisterEvent("RaeneWolfrunner_Shoot", 6000, 0)
Unit:RegisterEvent("RaeneWolfrunner_Volley", 20000, 0)
Unit:RegisterEvent("RaeneWolfrunner_Explosive Shot", 12000, 0)
Unit:RegisterEvent("RaeneWolfrunner_MultiShot", 15000, 0)
end

function RaeneWolfrunner_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function RaeneWolfrunner_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RaeneWolfrunner_Volley(pUnit, Event) 
pUnit:CastSpell(22908) 
end

function RaeneWolfrunner_ExplosiveShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15495, pUnit:GetMainTank()) 
end

function RaeneWolfrunner_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21390, pUnit:GetMainTank()) 
end

function RaeneWolfrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RaeneWolfrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RaeneWolfrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3691, 1, "RaeneWolfrunner_OnCombat")
RegisterUnitEvent(3691, 2, "RaeneWolfrunner_OnLeaveCombat")
RegisterUnitEvent(3691, 3, "RaeneWolfrunner_OnKilledTarget")
RegisterUnitEvent(3691, 4, "RaeneWolfrunner_OnDied")


--[[ Ashenvale -- Ran Bloodtooth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RanBloodtooth_OnCombat(Unit, Event)
Unit:RegisterEvent("RanBloodtooth_MultiShot", 10000, 0)
Unit:RegisterEvent("RanBloodtooth_Shoot", 6000, 0)
end

function RanBloodtooth_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function RanBloodtooth_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RanBloodtooth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RanBloodtooth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RanBloodtooth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3696, 1, "RanBloodtooth_OnCombat")
RegisterUnitEvent(3696, 2, "RanBloodtooth_OnLeaveCombat")
RegisterUnitEvent(3696, 3, "RanBloodtooth_OnKilledTarget")
RegisterUnitEvent(3696, 4, "RanBloodtooth_OnDied")


--[[ Ashenvale -- Roaming Felguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RoamingFelguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RoamingFelguard_Knockdown", 8000, 0)
end

function RoamingFelguard_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function RoamingFelguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoamingFelguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoamingFelguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6115, 1, "RoamingFelguard_OnCombat")
RegisterUnitEvent(6115, 2, "RoamingFelguard_OnLeaveCombat")
RegisterUnitEvent(6115, 3, "RoamingFelguard_OnKilledTarget")
RegisterUnitEvent(6115, 4, "RoamingFelguard_OnDied")


--[[ Ashenvale -- Rorgish Jowl.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RorgishJowl_OnCombat(Unit, Event)
Unit:RegisterEvent("RorgishJowl_Thrash", 5000, 0)
end

function RorgishJowl_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function RorgishJowl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RorgishJowl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RorgishJowl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10639, 1, "RorgishJowl_OnCombat")
RegisterUnitEvent(10639, 2, "RorgishJowl_OnLeaveCombat")
RegisterUnitEvent(10639, 3, "RorgishJowl_OnKilledTarget")
RegisterUnitEvent(10639, 4, "RorgishJowl_OnDied")


--[[ Ashenvale -- Rotting Slime.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RottingSlime_OnCombat(Unit, Event)
Unit:RegisterEvent("RottingSlime_DiseasedSlime", 10000, 0)
end

function RottingSlime_DiseasedSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6907, pUnit:GetMainTank()) 
end

function RottingSlime_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RottingSlime_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RottingSlime_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3928, 1, "RottingSlime_OnCombat")
RegisterUnitEvent(3928, 2, "RottingSlime_OnLeaveCombat")
RegisterUnitEvent(3928, 3, "RottingSlime_OnKilledTarget")
RegisterUnitEvent(3928, 4, "RottingSlime_OnDied")


--[[ Ashenvale -- Ruuzel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Ruuzel_OnCombat(Unit, Event)
Unit:RegisterEvent("Ruuzel_HeroicStrike", 6000, 0)
end

function Ruuzel_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25712, pUnit:GetMainTank()) 
end

function Ruuzel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ruuzel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ruuzel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3943, 1, "Ruuzel_OnCombat")
RegisterUnitEvent(3943, 2, "Ruuzel_OnLeaveCombat")
RegisterUnitEvent(3943, 3, "Ruuzel_OnKilledTarget")
RegisterUnitEvent(3943, 4, "Ruuzel_OnDied")


--[[ Ashenvale -- Saltspittle Muckdweller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittleMuckdweller_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittleMuckdweller_Throw", 6000, 0)
end

function SaltspittleMuckdweller_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SaltspittleMuckdweller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittleMuckdweller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittleMuckdweller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3740, 1, "SaltspittleMuckdweller_OnCombat")
RegisterUnitEvent(3740, 2, "SaltspittleMuckdweller_OnLeaveCombat")
RegisterUnitEvent(3740, 3, "SaltspittleMuckdweller_OnKilledTarget")
RegisterUnitEvent(3740, 4, "SaltspittleMuckdweller_OnDied")


--[[ Ashenvale -- Saltspittle Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittleOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittleOracle_HealingWave", 12000, 0)
Unit:RegisterEvent("SaltspittleOracle_Shock", 6000, 0)
end

function SaltspittleOracle_HealingWave(pUnit, Event) 
pUnit:CastSpell(913) 
end

function SaltspittleOracle_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2608, pUnit:GetMainTank()) 
end

function SaltspittleOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittleOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittleOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3742, 1, "SaltspittleOracle_OnCombat")
RegisterUnitEvent(3742, 2, "SaltspittleOracle_OnLeaveCombat")
RegisterUnitEvent(3742, 3, "SaltspittleOracle_OnKilledTarget")
RegisterUnitEvent(3742, 4, "SaltspittleOracle_OnDied")


--[[ Ashenvale -- Saltspittle Puddlejumper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittlePuddlejumper_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittlePuddlejumper_BattleStance", 1000, 1)
Unit:RegisterEvent("SaltspittlePuddlejumper_RushingCharge", 8000, 0)
end

function SaltspittlePuddlejumper_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function SaltspittlePuddlejumper_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function SaltspittlePuddlejumper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittlePuddlejumper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittlePuddlejumper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3737, 1, "SaltspittlePuddlejumper_OnCombat")
RegisterUnitEvent(3737, 2, "SaltspittlePuddlejumper_OnLeaveCombat")
RegisterUnitEvent(3737, 3, "SaltspittlePuddlejumper_OnKilledTarget")
RegisterUnitEvent(3737, 4, "SaltspittlePuddlejumper_OnDied")


--[[ Ashenvale -- Saltspittle Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittleWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittleWarrior_DefensiveStance", 1000, 1)
Unit:RegisterEvent("SaltspittleWarrior_ShieldBash", 8000, 0)
Unit:RegisterEvent("SaltspittleWarrior_SunderArmor", 6000, 0)
end

function SaltspittleWarrior_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function SaltspittleWarrior_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function SaltspittleWarrior_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7386, pUnit:GetMainTank()) 
end

function SaltspittleWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittleWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittleWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3739, 1, "SaltspittleWarrior_OnCombat")
RegisterUnitEvent(3739, 2, "SaltspittleWarrior_OnLeaveCombat")
RegisterUnitEvent(3739, 3, "SaltspittleWarrior_OnKilledTarget")
RegisterUnitEvent(3739, 4, "SaltspittleWarrior_OnDied")


--[[ Ashenvale -- Severed Dreamer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SeveredDreamer_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredDreamer_SummonIllusionaryNightmare", 1000, 1)
end

function SeveredDreamer_SummonIllusionaryNightmare(pUnit, Event) 
pUnit:CastSpell(6905) 
end

function SeveredDreamer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredDreamer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredDreamer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3802, 1, "SeveredDreamer_OnCombat")
RegisterUnitEvent(3802, 2, "SeveredDreamer_OnLeaveCombat")
RegisterUnitEvent(3802, 3, "SeveredDreamer_OnKilledTarget")
RegisterUnitEvent(3802, 4, "SeveredDreamer_OnDied")


--[[ Ashenvale -- Severed Druid.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SeveredDruid_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredDruid_Wrath", 6000, 0)
Unit:RegisterEvent("SeveredDruid_Rejuvenation", 13000, 0)
end

function SeveredDruid_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function SeveredDruid_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(1430) 
end

function SeveredDruid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredDruid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredDruid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3799, 1, "SeveredDruid_OnCombat")
RegisterUnitEvent(3799, 2, "SeveredDruid_OnLeaveCombat")
RegisterUnitEvent(3799, 3, "SeveredDruid_OnKilledTarget")
RegisterUnitEvent(3799, 4, "SeveredDruid_OnDied")


--[[ Ashenvale -- Severed Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SeveredKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredKeeper_ManaBurn", 7000, 0)
end

function SeveredKeeper_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function SeveredKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3803, 1, "SeveredKeeper_OnCombat")
RegisterUnitEvent(3803, 2, "SeveredKeeper_OnLeaveCombat")
RegisterUnitEvent(3803, 3, "SeveredKeeper_OnKilledTarget")
RegisterUnitEvent(3803, 4, "SeveredKeeper_OnDied")


--[[ Ashenvale -- Severed Sleeper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SeveredSleeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredSleeper_Sleep", 12000, 1)
end

function SeveredSleeper_Sleep(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8399, pUnit:GetMainTank()) 
end

function SeveredSleeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredSleeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredSleeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3801, 1, "SeveredSleeper_OnCombat")
RegisterUnitEvent(3801, 2, "SeveredSleeper_OnLeaveCombat")
RegisterUnitEvent(3801, 3, "SeveredSleeper_OnKilledTarget")
RegisterUnitEvent(3801, 4, "SeveredSleeper_OnDied")


--[[ Ashenvale -- Shadethicket Bark Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadethicketBarkRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketBarkRipper_TendonRip", 8000, 0)
end

function ShadethicketBarkRipper_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function ShadethicketBarkRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketBarkRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketBarkRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3784, 1, "ShadethicketBarkRipper_OnCombat")
RegisterUnitEvent(3784, 2, "ShadethicketBarkRipper_OnLeaveCombat")
RegisterUnitEvent(3784, 3, "ShadethicketBarkRipper_OnKilledTarget")
RegisterUnitEvent(3784, 4, "ShadethicketBarkRipper_OnDied")


--[[ Ashenvale -- Shadethicket Raincaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadethicketRaincaller_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketRaincaller_LightningBolt", 8000, 0)
Unit:RegisterEvent("ShadethicketRaincaller_LightningCloud", 10000, 0)
end

function ShadethicketRaincaller_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function ShadethicketRaincaller_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function ShadethicketRaincaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketRaincaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketRaincaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3783, 1, "ShadethicketRaincaller_OnCombat")
RegisterUnitEvent(3783, 2, "ShadethicketRaincaller_OnLeaveCombat")
RegisterUnitEvent(3783, 3, "ShadethicketRaincaller_OnKilledTarget")
RegisterUnitEvent(3783, 4, "ShadethicketRaincaller_OnDied")


--[[ Ashenvale -- Shadethicket Stone Mover.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadethicketStoneMover_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketStoneMover_StrengthofStone", 10000, 0)
end

function ShadethicketStoneMover_StrengthofStone(pUnit, Event) 
pUnit:CastSpell(6864) 
end

function ShadethicketStoneMover_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketStoneMover_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketStoneMover_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3782, 1, "ShadethicketStoneMover_OnCombat")
RegisterUnitEvent(3782, 2, "ShadethicketStoneMover_OnLeaveCombat")
RegisterUnitEvent(3782, 3, "ShadethicketStoneMover_OnKilledTarget")
RegisterUnitEvent(3782, 4, "ShadethicketStoneMover_OnDied")


--[[ Ashenvale -- Shadethicket Wood Shaper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadethicketWoodShaper_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketWoodShaper_EntanglingRoots", 8000, 0)
end

function ShadethicketWoodShaper_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function ShadethicketWoodShaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketWoodShaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketWoodShaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3781, 1, "ShadethicketWoodShaper_OnCombat")
RegisterUnitEvent(3781, 2, "ShadethicketWoodShaper_OnLeaveCombat")
RegisterUnitEvent(3781, 3, "ShadethicketWoodShaper_OnKilledTarget")
RegisterUnitEvent(3781, 4, "ShadethicketWoodShaper_OnDied")


--[[ Ashenvale -- Shadowhorn Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadowhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadowhornStag_ShadowhornCharge", 8000, 0)
end

function ShadowhornStag_ShadowhornCharge(pUnit, Event) 
pUnit:CastSpell(6921) 
end

function ShadowhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadowhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadowhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3817, 1, "ShadowhornStag_OnCombat")
RegisterUnitEvent(3817, 2, "ShadowhornStag_OnLeaveCombat")
RegisterUnitEvent(3817, 3, "ShadowhornStag_OnKilledTarget")
RegisterUnitEvent(3817, 4, "ShadowhornStag_OnDied")


--[[ Ashenvale -- Shadumbra.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Shadumbra_OnCombat(Unit, Event)
Unit:RegisterEvent("Shadumbra_Rend", 10000, 0)
end

function Shadumbra_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function Shadumbra_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Shadumbra_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Shadumbra_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12677, 1, "Shadumbra_OnCombat")
RegisterUnitEvent(12677, 2, "Shadumbra_OnLeaveCombat")
RegisterUnitEvent(12677, 3, "Shadumbra_OnKilledTarget")
RegisterUnitEvent(12677, 4, "Shadumbra_OnDied")


--[[ Ashenvale -- Sharptalon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Sharptalon_OnCombat(Unit, Event)
Unit:RegisterEvent("Sharptalon_PierceArmor", 6000, 0)
end

function Sharptalon_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function Sharptalon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sharptalon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sharptalon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12676, 1, "Sharptalon_OnCombat")
RegisterUnitEvent(12676, 2, "Sharptalon_OnLeaveCombat")
RegisterUnitEvent(12676, 3, "Sharptalon_OnKilledTarget")
RegisterUnitEvent(12676, 4, "Sharptalon_OnDied")


--[[ Ashenvale -- Silverwing Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SilverwingElite_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingElite_Shoot", 6000, 0)
end

function SilverwingElite_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverwingElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14715, 1, "SilverwingElite_OnCombat")
RegisterUnitEvent(14715, 2, "SilverwingElite_OnLeaveCombat")
RegisterUnitEvent(14715, 3, "SilverwingElite_OnKilledTarget")
RegisterUnitEvent(14715, 4, "SilverwingElite_OnDied")


--[[ Ashenvale -- Silverwing Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SilverwingSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingSentinel_Shoot", 6000, 0)
end

function SilverwingSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverwingSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12896, 1, "SilverwingSentinel_OnCombat")
RegisterUnitEvent(12896, 2, "SilverwingSentinel_OnLeaveCombat")
RegisterUnitEvent(12896, 3, "SilverwingSentinel_OnKilledTarget")
RegisterUnitEvent(12896, 4, "SilverwingSentinel_OnDied")


--[[ Ashenvale -- Silverwing Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SilverwingWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingWarrior_Rend", 10000, 0)
end

function SilverwingWarrior_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function SilverwingWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12897, 1, "SilverwingWarrior_OnCombat")
RegisterUnitEvent(12897, 2, "SilverwingWarrior_OnLeaveCombat")
RegisterUnitEvent(12897, 3, "SilverwingWarrior_OnKilledTarget")
RegisterUnitEvent(12897, 4, "SilverwingWarrior_OnDied")


--[[ Ashenvale -- Splintertree Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SplintertreeRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("SplintertreeRaider_Enrage", 10000, 0)
end

function SplintertreeRaider_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function SplintertreeRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SplintertreeRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SplintertreeRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12859, 1, "SplintertreeRaider_OnCombat")
RegisterUnitEvent(12859, 2, "SplintertreeRaider_OnLeaveCombat")
RegisterUnitEvent(12859, 3, "SplintertreeRaider_OnKilledTarget")
RegisterUnitEvent(12859, 4, "SplintertreeRaider_OnDied")


--[[ Ashenvale -- Taneel Darkwood.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TaneelDarkwood_OnCombat(Unit, Event)
Unit:RegisterEvent("TaneelDarkwood_Heal", 13000, 0)
Unit:RegisterEvent("TaneelDarkwood_Renew", 8000, 2)
Unit:RegisterEvent("TaneelDarkwood_ShadowWordPain", 4000, 1)
end

function TaneelDarkwood_Heal(pUnit, Event) 
pUnit:CastSpell(6063) 
end

function TaneelDarkwood_Renew(pUnit, Event) 
pUnit:CastSpell(6077) 
end

function TaneelDarkwood_ShadowWordPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2767, pUnit:GetMainTank()) 
end

function TaneelDarkwood_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaneelDarkwood_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaneelDarkwood_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3940, 1, "TaneelDarkwood_OnCombat")
RegisterUnitEvent(3940, 2, "TaneelDarkwood_OnLeaveCombat")
RegisterUnitEvent(3940, 3, "TaneelDarkwood_OnKilledTarget")
RegisterUnitEvent(3940, 4, "TaneelDarkwood_OnDied")


--[[ Ashenvale -- Terrowulf Fleshripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TerrowulfFleshripper_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfFleshripper_TendonRip", 8000, 0)
end

function TerrowulfFleshripper_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function TerrowulfFleshripper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfFleshripper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfFleshripper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3789, 1, "TerrowulfFleshripper_OnCombat")
RegisterUnitEvent(3789, 2, "TerrowulfFleshripper_OnLeaveCombat")
RegisterUnitEvent(3789, 3, "TerrowulfFleshripper_OnKilledTarget")
RegisterUnitEvent(3789, 4, "TerrowulfFleshripper_OnDied")


--[[ Ashenvale -- Terrowulf Packlord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TerrowulfPacklord_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfPacklord_BattleRoar", 2000, 2)
end

function TerrowulfPacklord_BattleRoar(pUnit, Event) 
pUnit:CastSpell(6507) 
end

function TerrowulfPacklord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfPacklord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfPacklord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3792, 1, "TerrowulfPacklord_OnCombat")
RegisterUnitEvent(3792, 2, "TerrowulfPacklord_OnLeaveCombat")
RegisterUnitEvent(3792, 3, "TerrowulfPacklord_OnKilledTarget")
RegisterUnitEvent(3792, 4, "TerrowulfPacklord_OnDied")


--[[ Ashenvale -- Terrowulf Shadow Weaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TerrowulfShadowWeaver_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfShadowWeaver_VeilofShadow", 8000, 0)
end

function TerrowulfShadowWeaver_VeilofShadow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7068, pUnit:GetMainTank()) 
end

function TerrowulfShadowWeaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfShadowWeaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfShadowWeaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3791, 1, "TerrowulfShadowWeaver_OnCombat")
RegisterUnitEvent(3791, 2, "TerrowulfShadowWeaver_OnLeaveCombat")
RegisterUnitEvent(3791, 3, "TerrowulfShadowWeaver_OnKilledTarget")
RegisterUnitEvent(3791, 4, "TerrowulfShadowWeaver_OnDied")


--[[ Ashenvale -- Thistlefur Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurAvenger_Vengeance", 13000, 0)
end

function ThistlefurAvenger_Vengeance(pUnit, Event) 
pUnit:CastSpell(8602) 
end

function ThistlefurAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3925, 1, "ThistlefurAvenger_OnCombat")
RegisterUnitEvent(3925, 2, "ThistlefurAvenger_OnLeaveCombat")
RegisterUnitEvent(3925, 3, "ThistlefurAvenger_OnKilledTarget")
RegisterUnitEvent(3925, 4, "ThistlefurAvenger_OnDied")


--[[ Ashenvale -- Thistlefur Den Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurDenWatcher_FrenziedRage", 8000, 0)
end

function ThistlefurDenWatcher_FrenziedRage(pUnit, Event) 
pUnit:CastSpell(3940) 
end

function ThistlefurDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3923, 1, "ThistlefurDenWatcher_OnCombat")
RegisterUnitEvent(3923, 2, "ThistlefurDenWatcher_OnLeaveCombat")
RegisterUnitEvent(3923, 3, "ThistlefurDenWatcher_OnKilledTarget")
RegisterUnitEvent(3923, 4, "ThistlefurDenWatcher_OnDied")


--[[ Ashenvale -- Thistlefur Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurPathfinder_Shoot", 6000, 0)
end

function ThistlefurPathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function ThistlefurPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3926, 1, "ThistlefurPathfinder_OnCombat")
RegisterUnitEvent(3926, 2, "ThistlefurPathfinder_OnLeaveCombat")
RegisterUnitEvent(3926, 3, "ThistlefurPathfinder_OnKilledTarget")
RegisterUnitEvent(3926, 4, "ThistlefurPathfinder_OnDied")


--[[ Ashenvale -- Thistlefur Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurShaman_Bloodlust", 2000, 2)
Unit:RegisterEvent("ThistlefurShaman_HealingWave", 13000, 0)
end

function ThistlefurShaman_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function ThistlefurShaman_HealingWave(pUnit, Event) 
pUnit:CastSpell(11986) 
end

function ThistlefurShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3924, 1, "ThistlefurShaman_OnCombat")
RegisterUnitEvent(3924, 2, "ThistlefurShaman_OnLeaveCombat")
RegisterUnitEvent(3924, 3, "ThistlefurShaman_OnKilledTarget")
RegisterUnitEvent(3924, 4, "ThistlefurShaman_OnDied")


--[[ Ashenvale -- Thistlefur Totemic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurTotemic_HealingWard", 12000, 0)
end

function ThistlefurTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(6274) 
end

function ThistlefurTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3922, 1, "ThistlefurTotemic_OnCombat")
RegisterUnitEvent(3922, 2, "ThistlefurTotemic_OnLeaveCombat")
RegisterUnitEvent(3922, 3, "ThistlefurTotemic_OnKilledTarget")
RegisterUnitEvent(3922, 4, "ThistlefurTotemic_OnDied")


--[[ Ashenvale -- Thistlefur Ursa.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurUrsa_BattleStance", 1000, 1)
Unit:RegisterEvent("ThistlefurUrsa_HeroicStrike", 6000, 0)
end

function ThistlefurUrsa_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function ThistlefurUrsa_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25712, pUnit:GetMainTank()) 
end

function ThistlefurUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3921, 1, "ThistlefurUrsa_OnCombat")
RegisterUnitEvent(3921, 2, "ThistlefurUrsa_OnLeaveCombat")
RegisterUnitEvent(3921, 3, "ThistlefurUrsa_OnKilledTarget")
RegisterUnitEvent(3921, 4, "ThistlefurUrsa_OnDied")


--[[ Ashenvale -- Tideress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Tideress_OnCombat(Unit, Event)
Unit:RegisterEvent("Tideress_Frostbolt", 7000, 0)
end

function Tideress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function Tideress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tideress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tideress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12759, 1, "Tideress_OnCombat")
RegisterUnitEvent(12759, 2, "Tideress_OnLeaveCombat")
RegisterUnitEvent(12759, 3, "Tideress_OnKilledTarget")
RegisterUnitEvent(12759, 4, "Tideress_OnDied")


--[[ Ashenvale -- Torek.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Torek_OnCombat(Unit, Event)
Unit:RegisterEvent("Torek_Rend", 8000, 0)
Unit:RegisterEvent("Torek_Thunderclap", 10000, 0)
end

function Torek_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function Torek_Thunderclap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function Torek_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Torek_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Torek_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12858, 1, "Torek_OnCombat")
RegisterUnitEvent(12858, 2, "Torek_OnLeaveCombat")
RegisterUnitEvent(12858, 3, "Torek_OnKilledTarget")
RegisterUnitEvent(12858, 4, "Torek_OnDied")


--[[ Ashenvale -- Twilight  Firesworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TwilightFiresworn_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightFiresworn_FireShieldII", 1000, 1)
Unit:RegisterEvent("TwilightFiresworn_Fireball", 7000, 0)
end

function TwilightFiresworn_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function TwilightFiresworn_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function TwilightFiresworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightFiresworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightFiresworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25863, 1, "TwilightFiresworn_OnCombat")
RegisterUnitEvent(25863, 2, "TwilightFiresworn_OnLeaveCombat")
RegisterUnitEvent(25863, 3, "TwilightFiresworn_OnKilledTarget")
RegisterUnitEvent(25863, 4, "TwilightFiresworn_OnDied")


--[[ Ashenvale -- Twilight Speaker Viktor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TwilightSpeakerViktor_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightSpeakerViktor_Fireball", 7000, 0)
end

function TwilightSpeakerViktor_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function TwilightSpeakerViktor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightSpeakerViktor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightSpeakerViktor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25924, 1, "TwilightSpeakerViktor_OnCombat")
RegisterUnitEvent(25924, 2, "TwilightSpeakerViktor_OnLeaveCombat")
RegisterUnitEvent(25924, 3, "TwilightSpeakerViktor_OnKilledTarget")
RegisterUnitEvent(25924, 4, "TwilightSpeakerViktor_OnDied")


--[[ Ashenvale -- Ursangous.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Ursangous_OnCombat(Unit, Event)
Unit:RegisterEvent("Ursangous_KnockAway", 8000, 0)
Unit:RegisterEvent("Ursangous_Rend", 10000, 0)
end

function Ursangous_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10101, pUnit:GetMainTank()) 
end

function Ursangous_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function Ursangous_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ursangous_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ursangous_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12678, 1, "Ursangous_OnCombat")
RegisterUnitEvent(12678, 2, "Ursangous_OnLeaveCombat")
RegisterUnitEvent(12678, 3, "Ursangous_OnKilledTarget")
RegisterUnitEvent(12678, 4, "Ursangous_OnDied")


--[[ Ashenvale -- Ursollok.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Ursollok_OnCombat(Unit, Event)
Unit:RegisterEvent("Ursollok_Maul", 5000, 0)
end

function Ursollok_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17156, pUnit:GetMainTank()) 
end

function Ursollok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ursollok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ursollok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12037, 1, "Ursollok_OnCombat")
RegisterUnitEvent(12037, 2, "Ursollok_OnLeaveCombat")
RegisterUnitEvent(12037, 3, "Ursollok_OnKilledTarget")
RegisterUnitEvent(12037, 4, "Ursollok_OnDied")


--[[ Ashenvale -- Uthil Mooncall.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function UthilMooncall_OnCombat(Unit, Event)
Unit:RegisterEvent("UthilMooncall_BearForm", 1000, 1)
Unit:RegisterEvent("UthilMooncall_Maul", 5000, 0)
end

function UthilMooncall_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function UthilMooncall_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function UthilMooncall_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UthilMooncall_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UthilMooncall_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3941, 1, "UthilMooncall_OnCombat")
RegisterUnitEvent(3941, 2, "UthilMooncall_OnLeaveCombat")
RegisterUnitEvent(3941, 3, "UthilMooncall_OnKilledTarget")
RegisterUnitEvent(3941, 4, "UthilMooncall_OnDied")


--[[ Ashenvale -- Vorsha the Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function VorshatheLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("VorshatheLasher_Lash", 6000, 0)
Unit:RegisterEvent("VorshatheLasher_Thrash", 5000, 0)
end

function VorshatheLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function VorshatheLasher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function VorshatheLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VorshatheLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VorshatheLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12940, 1, "VorshatheLasher_OnCombat")
RegisterUnitEvent(12940, 2, "VorshatheLasher_OnLeaveCombat")
RegisterUnitEvent(12940, 3, "VorshatheLasher_OnKilledTarget")
RegisterUnitEvent(12940, 4, "VorshatheLasher_OnDied")


--[[ Ashenvale -- Wandering Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WanderingProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("WanderingProtector_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("WanderingProtector_WarStomp", 6000, 0)
end

function WanderingProtector_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11922, pUnit:GetMainTank()) 
end

function WanderingProtector_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function WanderingProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WanderingProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WanderingProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12836, 1, "WanderingProtector_OnCombat")
RegisterUnitEvent(12836, 2, "WanderingProtector_OnLeaveCombat")
RegisterUnitEvent(12836, 3, "WanderingProtector_OnKilledTarget")
RegisterUnitEvent(12836, 4, "WanderingProtector_OnDied")


--[[ Ashenvale -- Warsong Grunt.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WarsongGrunt_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongGrunt_Cleave", 8000, 0)
Unit:RegisterEvent("WarsongGrunt_ShieldBash", 6000, 0)
end

function WarsongGrunt_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function WarsongGrunt_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11972, pUnit:GetMainTank()) 
end

function WarsongGrunt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongGrunt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongGrunt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11682, 1, "WarsongGrunt_OnCombat")
RegisterUnitEvent(11682, 2, "WarsongGrunt_OnLeaveCombat")
RegisterUnitEvent(11682, 3, "WarsongGrunt_OnKilledTarget")
RegisterUnitEvent(11682, 4, "WarsongGrunt_OnDied")


--[[ Ashenvale -- Warsong Outrider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WarsongOutrider_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongOutrider_ScorpidSting", 8000, 0)
Unit:RegisterEvent("WarsongOutrider_Shoot", 6000, 0)
end

function WarsongOutrider_ScorpidSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18545, pUnit:GetMainTank()) 
end

function WarsongOutrider_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function WarsongOutrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongOutrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongOutrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12864, 1, "WarsongOutrider_OnCombat")
RegisterUnitEvent(12864, 2, "WarsongOutrider_OnLeaveCombat")
RegisterUnitEvent(12864, 3, "WarsongOutrider_OnKilledTarget")
RegisterUnitEvent(12864, 4, "WarsongOutrider_OnDied")


--[[ Ashenvale -- Warsong Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WarsongShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongShaman_Bloodlust", 2000, 2)
Unit:RegisterEvent("WarsongShaman_LightningBolt", 13000, 0)
end

function WarsongShaman_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function WarsongShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20805, pUnit:GetMainTank()) 
end

function WarsongShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11683, 1, "WarsongShaman_OnCombat")
RegisterUnitEvent(11683, 2, "WarsongShaman_OnLeaveCombat")
RegisterUnitEvent(11683, 3, "WarsongShaman_OnKilledTarget")
RegisterUnitEvent(11683, 4, "WarsongShaman_OnDied")


--[[ Ashenvale -- Warsong Shredder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WarsongShredder_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongShredder_Overdrive", 10000, 0)
end

function WarsongShredder_Overdrive(pUnit, Event) 
pUnit:CastSpell(18546) 
end

function WarsongShredder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongShredder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongShredder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11684, 1, "WarsongShredder_OnCombat")
RegisterUnitEvent(11684, 2, "WarsongShredder_OnLeaveCombat")
RegisterUnitEvent(11684, 3, "WarsongShredder_OnKilledTarget")
RegisterUnitEvent(11684, 4, "WarsongShredder_OnDied")


--[[ Ashenvale -- Wild Buck.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildBuck_OnCombat(Unit, Event)
Unit:RegisterEvent("WildBuck_RushingCharge", 8000, 0)
end

function WildBuck_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function WildBuck_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildBuck_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildBuck_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3816, 1, "WildBuck_OnCombat")
RegisterUnitEvent(3816, 2, "WildBuck_OnLeaveCombat")
RegisterUnitEvent(3816, 3, "WildBuck_OnKilledTarget")
RegisterUnitEvent(3816, 4, "WildBuck_OnDied")


--[[ Ashenvale -- Wildthorn Lurker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildthornLurker_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornLurker_Hide", 1000, 1)
end

function WildthornLurker_Hide(pUnit, Event) 
pUnit:CastSpell(6920) 
end

function WildthornLurker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornLurker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornLurker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3821, 1, "WildthornLurker_OnCombat")
RegisterUnitEvent(3821, 2, "WildthornLurker_OnLeaveCombat")
RegisterUnitEvent(3821, 3, "WildthornLurker_OnKilledTarget")
RegisterUnitEvent(3821, 4, "WildthornLurker_OnDied")


--[[ Ashenvale -- Wildthorn Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildthornStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornStalker_Web", 10000, 0)
end

function WildthornStalker_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12023, pUnit:GetMainTank()) 
end

function WildthornStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3819, 1, "WildthornStalker_OnCombat")
RegisterUnitEvent(3819, 2, "WildthornStalker_OnLeaveCombat")
RegisterUnitEvent(3819, 3, "WildthornStalker_OnKilledTarget")
RegisterUnitEvent(3819, 4, "WildthornStalker_OnDied")


--[[ Ashenvale -- Wildthorn Venomspitter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildthornVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornVenomspitter_VenomSpit", 8000, 0)
end

function WildthornVenomspitter_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6917, pUnit:GetMainTank()) 
end

function WildthornVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3820, 1, "WildthornVenomspitter_OnCombat")
RegisterUnitEvent(3820, 2, "WildthornVenomspitter_OnLeaveCombat")
RegisterUnitEvent(3820, 3, "WildthornVenomspitter_OnKilledTarget")
RegisterUnitEvent(3820, 4, "WildthornVenomspitter_OnDied")


--[[ Ashenvale -- Withered Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WitheredAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("WitheredAncient_CurseofThorns", 8000, 0)
end

function WitheredAncient_CurseofThorns(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6909, pUnit:GetMainTank()) 
end

function WitheredAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitheredAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitheredAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3919, 1, "WitheredAncient_OnCombat")
RegisterUnitEvent(3919, 2, "WitheredAncient_OnLeaveCombat")
RegisterUnitEvent(3919, 3, "WitheredAncient_OnKilledTarget")
RegisterUnitEvent(3919, 4, "WitheredAncient_OnDied")


--[[ Ashenvale -- Wrathtail Myrmidon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailMyrmidon_Rend", 8000, 0)
Unit:RegisterEvent("WrathtailMyrmidon_Strike", 6000, 0)
end

function WrathtailMyrmidon_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function WrathtailMyrmidon_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathtailMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3711, 1, "WrathtailMyrmidon_OnCombat")
RegisterUnitEvent(3711, 2, "WrathtailMyrmidon_OnLeaveCombat")
RegisterUnitEvent(3711, 3, "WrathtailMyrmidon_OnKilledTarget")
RegisterUnitEvent(3711, 4, "WrathtailMyrmidon_OnDied")


--[[ Ashenvale -- Wrathtail Priestess.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailPriestess_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailPriestess_Heal", 13000, 0)
Unit:RegisterEvent("WrathtailPriestess_Sleep", 15000, 0)
end

function WrathtailPriestess_Heal(pUnit, Event) 
pUnit:CastSpell(11642) 
end

function WrathtailPriestess_Sleep(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15970, pUnit:GetMainTank()) 
end

function WrathtailPriestess_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailPriestess_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailPriestess_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3944, 1, "WrathtailPriestess_OnCombat")
RegisterUnitEvent(3944, 2, "WrathtailPriestess_OnLeaveCombat")
RegisterUnitEvent(3944, 3, "WrathtailPriestess_OnKilledTarget")
RegisterUnitEvent(3944, 4, "WrathtailPriestess_OnDied")


--[[ Ashenvale -- Wrathtail Razortail.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailRazortail_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailRazortail_PierceArmor", 10000, 0)
Unit:RegisterEvent("WrathtailRazortail_Thorns", 2000, 2)
end

function WrathtailRazortail_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function WrathtailRazortail_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function WrathtailRazortail_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailRazortail_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailRazortail_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3712, 1, "WrathtailRazortail_OnCombat")
RegisterUnitEvent(3712, 2, "WrathtailRazortail_OnLeaveCombat")
RegisterUnitEvent(3712, 3, "WrathtailRazortail_OnKilledTarget")
RegisterUnitEvent(3712, 4, "WrathtailRazortail_OnDied")


--[[ Ashenvale -- Wrathtail Sea Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailSeaWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailSeaWitch_LightningBlast", 8000, 0)
end

function WrathtailSeaWitch_LightningBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8598, pUnit:GetMainTank()) 
end

function WrathtailSeaWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailSeaWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailSeaWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3715, 1, "WrathtailSeaWitch_OnCombat")
RegisterUnitEvent(3715, 2, "WrathtailSeaWitch_OnLeaveCombat")
RegisterUnitEvent(3715, 3, "WrathtailSeaWitch_OnKilledTarget")
RegisterUnitEvent(3715, 4, "WrathtailSeaWitch_OnDied")


--[[ Ashenvale -- Wrathtail Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailSorceress_Frostbolt", 7000, 0)
end

function WrathtailSorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function WrathtailSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3717, 1, "WrathtailSorceress_OnCombat")
RegisterUnitEvent(3717, 2, "WrathtailSorceress_OnLeaveCombat")
RegisterUnitEvent(3717, 3, "WrathtailSorceress_OnKilledTarget")
RegisterUnitEvent(3717, 4, "WrathtailSorceress_OnDied")


--[[ Ashenvale -- Xavian Betrayer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function XavianBetrayer_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianBetrayer_BattleShout", 2000, 1)
Unit:RegisterEvent("XavianBetrayer_GiftoftheXavian", 13000, 0)
end

function XavianBetrayer_BattleShout(pUnit, Event) 
pUnit:CastSpell(5242) 
end

function XavianBetrayer_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianBetrayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianBetrayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianBetrayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3754, 1, "XavianBetrayer_OnCombat")
RegisterUnitEvent(3754, 2, "XavianBetrayer_OnLeaveCombat")
RegisterUnitEvent(3754, 3, "XavianBetrayer_OnKilledTarget")
RegisterUnitEvent(3754, 4, "XavianBetrayer_OnDied")


--[[ Ashenvale -- Xavian Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function XavianRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianRogue_GiftoftheXavian", 13000, 0)
end

function XavianRogue_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3752, 1, "XavianRogue_OnCombat")
RegisterUnitEvent(3752, 2, "XavianRogue_OnLeaveCombat")
RegisterUnitEvent(3752, 3, "XavianRogue_OnKilledTarget")
RegisterUnitEvent(3752, 4, "XavianRogue_OnDied")


--[[ Ashenvale -- Xavian Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function XavianFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianFelsworn_Corruption", 8000, 0)
Unit:RegisterEvent("XavianFelsworn_GiftoftheXavian", 13000, 0)
end

function XavianFelsworn_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6223, pUnit:GetMainTank()) 
end

function XavianFelsworn_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3755, 1, "XavianFelsworn_OnCombat")
RegisterUnitEvent(3755, 2, "XavianFelsworn_OnLeaveCombat")
RegisterUnitEvent(3755, 3, "XavianFelsworn_OnKilledTarget")
RegisterUnitEvent(3755, 4, "XavianFelsworn_OnDied")


--[[ Ashenvale -- Xavian Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function XavianHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianHellcaller_Fireball", 8000, 0)
Unit:RegisterEvent("XavianHellcaller_GiftoftheXavian", 13000, 0)
end

function XavianHellcaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function XavianHellcaller_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3757, 1, "XavianHellcaller_OnCombat")
RegisterUnitEvent(3757, 2, "XavianHellcaller_OnLeaveCombat")
RegisterUnitEvent(3757, 3, "XavianHellcaller_OnKilledTarget")
RegisterUnitEvent(3757, 4, "XavianHellcaller_OnDied")