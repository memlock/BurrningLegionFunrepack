--[[ Thousand Needles -- Achellios the Banished.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function AchelliostheBanished_OnCombat(Unit, Event)
Unit:RegisterEvent("AchelliostheBanished_BattleShout", 1000, 1)
end

function AchelliostheBanished_BattleShout(pUnit, Event) 
pUnit:CastSpell(6192) 
end

function AchelliostheBanished_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AchelliostheBanished_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AchelliostheBanished_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5933, 1, "AchelliostheBanished_OnCombat")
RegisterUnitEvent(5933, 2, "AchelliostheBanished_OnLeaveCombat")
RegisterUnitEvent(5933, 3, "AchelliostheBanished_OnKilledTarget")
RegisterUnitEvent(5933, 4, "AchelliostheBanished_OnDied")

--[[ Thousand Needles -- Arikara.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Arikara_OnCombat(Unit, Event)
Unit:RegisterEvent("Arikara_CurseofVengeance", 10000, 3)
Unit:RegisterEvent("Arikara_Enrage", 120000, 0)
end

function Arikara_CurseofVengeance(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17213, pUnit:GetMainTank()) 
end

function Arikara_Enrage(pUnit, Event)
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function Arikara_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arikara_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arikara_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10882, 1, "Arikara_OnCombat")
RegisterUnitEvent(10882, 2, "Arikara_OnLeaveCombat")
RegisterUnitEvent(10882, 3, "Arikara_OnKilledTarget")
RegisterUnitEvent(10882, 4, "Arikara_OnDied")

--[[ Thousand Needles -- Arnak Grimtotem.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ArnakGrimtotem_OnCombat(Unit, Event)
Unit:RegisterEvent("ArnakGrimtotem_Rend", 10000, 0)
Unit:RegisterEvent("ArnakGrimtotem_Uppercut", 6000, 0)
end

function ArnakGrimtotem_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function ArnakGrimtotem_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function ArnakGrimtotem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArnakGrimtotem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArnakGrimtotem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10896, 1, "ArnakGrimtotem_OnCombat")
RegisterUnitEvent(10896, 2, "ArnakGrimtotem_OnLeaveCombat")
RegisterUnitEvent(10896, 3, "ArnakGrimtotem_OnKilledTarget")
RegisterUnitEvent(10896, 4, "ArnakGrimtotem_OnDied")

--[[ Thousand Needles -- Boiling Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function BoilingElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("BoilingElemental_SteamJet", 15000, 0)
end

function BoilingElemental_SteamJet(pUnit, Event) 
pUnit:CastSpell(11983) 
end

function BoilingElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoilingElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoilingElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10757, 1, "BoilingElemental_OnCombat")
RegisterUnitEvent(10757, 2, "BoilingElemental_OnLeaveCombat")
RegisterUnitEvent(10757, 3, "BoilingElemental_OnKilledTarget")
RegisterUnitEvent(10757, 4, "BoilingElemental_OnDied")

--[[ Thousand Needles -- Cloud Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function CloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("CloudSerpent_LightningBolt", 8000, 0)
end

function CloudSerpent_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8246, pUnit:GetMainTank()) 
end

function CloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4117, 1, "CloudSerpent_OnCombat")
RegisterUnitEvent(4117, 2, "CloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4117, 3, "CloudSerpent_OnKilledTarget")
RegisterUnitEvent(4117, 4, "CloudSerpent_OnDied")

--[[ Thousand Needles -- Crag Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function CragStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("CragStalker_SurpriseAttack", 8000, 0)
end

function CragStalker_SurpriseAttack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8151, pUnit:GetMainTank()) 
end

function CragStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CragStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CragStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4126, 1, "CragStalker_OnCombat")
RegisterUnitEvent(4126, 2, "CragStalker_OnLeaveCombat")
RegisterUnitEvent(4126, 3, "CragStalker_OnKilledTarget")
RegisterUnitEvent(4126, 4, "CragStalker_OnDied")

--[[ Thousand Needles -- Death's Head Cultist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function DeathsHeadCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathsHeadCultist_DeathDecay", 15000, 0)
Unit:RegisterEvent("DeathsHeadCultist_ShadowBolt", 8000, 0)
end

function DeathsHeadCultist_DeathDecay(pUnit, Event) 
pUnit:CastSpell(11433) 
end

function DeathsHeadCultist_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function DeathsHeadCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathsHeadCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathsHeadCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7872, 1, "DeathsHeadCultist_OnCombat")
RegisterUnitEvent(7872, 2, "DeathsHeadCultist_OnLeaveCombat")
RegisterUnitEvent(7872, 3, "DeathsHeadCultist_OnKilledTarget")
RegisterUnitEvent(7872, 4, "DeathsHeadCultist_OnDied")

--[[ Thousand Needles -- Elder Cloud Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ElderCloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderCloudSerpent_LightningBolt", 8000, 0)
end

function ElderCloudSerpent_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8246, pUnit:GetMainTank()) 
end

function ElderCloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderCloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderCloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4119, 1, "ElderCloudSerpent_OnCombat")
RegisterUnitEvent(4119, 2, "ElderCloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4119, 3, "ElderCloudSerpent_OnKilledTarget")
RegisterUnitEvent(4119, 4, "ElderCloudSerpent_OnDied")

--[[ Thousand Needles -- Galak Assassin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakAssassin_Net", 10000, 0)
end

function GalakAssassin_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function GalakAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10720, 1, "GalakAssassin_OnCombat")
RegisterUnitEvent(10720, 2, "GalakAssassin_OnLeaveCombat")
RegisterUnitEvent(10720, 3, "GalakAssassin_OnKilledTarget")
RegisterUnitEvent(10720, 4, "GalakAssassin_OnDied")

--[[ Thousand Needles -- Galak FlameGuard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakFlameGuard_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakFlameGuard_DemoralizingShout", 10000, 0)
end

function GalakFlameGuard_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function GalakFlameGuard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakFlameGuard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakFlameGuard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7404, 1, "GalakFlameGuard_OnCombat")
RegisterUnitEvent(7404, 2, "GalakFlameGuard_OnLeaveCombat")
RegisterUnitEvent(7404, 3, "GalakFlameGuard_OnKilledTarget")
RegisterUnitEvent(7404, 4, "GalakFlameGuard_OnDied")

--[[ Thousand Needles -- Galak Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakMarauder_RushingCharge", 7000, 0)
end

function GalakMarauder_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GalakMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4099, 1, "GalakMarauder_OnCombat")
RegisterUnitEvent(4099, 2, "GalakMarauder_OnLeaveCombat")
RegisterUnitEvent(4099, 3, "GalakMarauder_OnKilledTarget")
RegisterUnitEvent(4099, 4, "GalakMarauder_OnDied")

--[[ Thousand Needles -- Galak Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakMauler_DemoralizingShout", 10000, 0)
end

function GalakMauler_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function GalakMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4095, 1, "GalakMauler_OnCombat")
RegisterUnitEvent(4095, 2, "GalakMauler_OnLeaveCombat")
RegisterUnitEvent(4095, 3, "GalakMauler_OnKilledTarget")
RegisterUnitEvent(4095, 4, "GalakMauler_OnDied")

--[[ Thousand Needles -- Galak Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakScout_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakScout_Shot", 6000, 0)
end

function GalakScout_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4094, 1, "GalakScout_OnCombat")
RegisterUnitEvent(4094, 2, "GalakScout_OnLeaveCombat")
RegisterUnitEvent(4094, 3, "GalakScout_OnKilledTarget")
RegisterUnitEvent(4094, 4, "GalakScout_OnDied")

--[[ Thousand Needles -- Galak Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakStormer_LightningBolt", 8000, 0)
end

function GalakStormer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function GalakStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4097, 1, "GalakStormer_OnCombat")
RegisterUnitEvent(4097, 2, "GalakStormer_OnLeaveCombat")
RegisterUnitEvent(4097, 3, "GalakStormer_OnKilledTarget")
RegisterUnitEvent(4097, 4, "GalakStormer_OnDied")

--[[ Thousand Needles -- Galak Windchaser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakWindchaser_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakWindchaser_EnvelopingWinds", 13000, 0)
Unit:RegisterEvent("GalakWindchaser_HealingWave", 8000, 0)
end

function GalakWindchaser_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function GalakWindchaser_HealingWave(pUnit, Event) 
pUnit:CastSpell(939) 
end

function GalakWindchaser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakWindchaser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakWindchaser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4096, 1, "GalakWindchaser_OnCombat")
RegisterUnitEvent(4096, 2, "GalakWindchaser_OnLeaveCombat")
RegisterUnitEvent(4096, 3, "GalakWindchaser_OnKilledTarget")
RegisterUnitEvent(4096, 4, "GalakWindchaser_OnDied")

--[[ Thousand Needles -- Galak Wrangler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakWrangler_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakWrangler_Shot", 6000, 0)
Unit:RegisterEvent("GalakWrangler_Net", 8000, 0)
end

function GalakWrangler_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakWrangler_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function GalakWrangler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakWrangler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakWrangler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4093, 1, "GalakWrangler_OnCombat")
RegisterUnitEvent(4093, 2, "GalakWrangler_OnLeaveCombat")
RegisterUnitEvent(4093, 3, "GalakWrangler_OnKilledTarget")
RegisterUnitEvent(4093, 4, "GalakWrangler_OnDied")

--[[ Thousand Needles -- Gibblesnik.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Gibblesnik_OnCombat(Unit, Event)
Unit:RegisterEvent("Gibblesnik_SunderArmor", 6000, 0)
end

function Gibblesnik_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11971, pUnit:GetMainTank()) 
end

function Gibblesnik_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gibblesnik_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gibblesnik_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4093, 1, "GalakWrangler_OnCombat")
RegisterUnitEvent(4093, 2, "GalakWrangler_OnLeaveCombat")
RegisterUnitEvent(4093, 3, "GalakWrangler_OnKilledTarget")
RegisterUnitEvent(4093, 4, "GalakWrangler_OnDied")

--[[ Thousand Needles -- Gravelsnout Digger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutDigger_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutDigger_SkullCrack", 8000, 0)
end

function GravelsnoutDigger_SkullCrack(pUnit, Event) 
pUnit:CastSpell(3551) 
end

function GravelsnoutDigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutDigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutDigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4113, 1, "GravelsnoutDigger_OnCombat")
RegisterUnitEvent(4113, 2, "GravelsnoutDigger_OnLeaveCombat")
RegisterUnitEvent(4113, 3, "GravelsnoutDigger_OnKilledTarget")
RegisterUnitEvent(4113, 4, "GravelsnoutDigger_OnDied")

--[[ Thousand Needles -- Gravelsnout Forager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutForager_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutForager_CorrosiveAcid", 10000, 0)
end

function GravelsnoutForager_CorrosiveAcid(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8245, pUnit:GetMainTank()) 
end

function GravelsnoutForager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutForager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutForager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4114, 1, "GravelsnoutForager_OnCombat")
RegisterUnitEvent(4114, 2, "GravelsnoutForager_OnLeaveCombat")
RegisterUnitEvent(4114, 3, "GravelsnoutForager_OnKilledTarget")
RegisterUnitEvent(4114, 4, "GravelsnoutForager_OnDied")

--[[ Thousand Needles -- Gravelsnout Kobold.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutKobold_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutKobold_Strike", 4000, 0)
end

function GravelsnoutKobold_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GravelsnoutKobold_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutKobold_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutKobold_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4111, 1, "GravelsnoutKobold_OnCombat")
RegisterUnitEvent(4111, 2, "GravelsnoutKobold_OnLeaveCombat")
RegisterUnitEvent(4111, 3, "GravelsnoutKobold_OnKilledTarget")
RegisterUnitEvent(4111, 4, "GravelsnoutKobold_OnDied")

--[[ Thousand Needles -- Gravelsnout Surveyor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutSurveyor_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutSurveyor_Frostbolt", 6000, 0)
end

function GravelsnoutSurveyor_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20806, pUnit:GetMainTank()) 
end

function GravelsnoutSurveyor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutSurveyor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutSurveyor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4116, 1, "GravelsnoutSurveyor_OnCombat")
RegisterUnitEvent(4116, 2, "GravelsnoutSurveyor_OnLeaveCombat")
RegisterUnitEvent(4116, 3, "GravelsnoutSurveyor_OnKilledTarget")
RegisterUnitEvent(4116, 4, "GravelsnoutSurveyor_OnDied")

--[[ Thousand Needles -- Gravelsnout Vermin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutVermin_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutVermin_InfectedWound", 10000, 0)
end

function GravelsnoutVermin_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3427, pUnit:GetMainTank()) 
end

function GravelsnoutVermin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutVermin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutVermin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4112, 1, "GravelsnoutVermin_OnCombat")
RegisterUnitEvent(4112, 2, "GravelsnoutVermin_OnLeaveCombat")
RegisterUnitEvent(4112, 3, "GravelsnoutVermin_OnKilledTarget")
RegisterUnitEvent(4112, 4, "GravelsnoutVermin_OnDied")

--[[ Thousand Needles -- Grimtotem Bandit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemBandit_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemBandit_Disarm", 8000, 0)
Unit:RegisterEvent("GrimtotemBandit_Kick", 9000, 0)
end

function GrimtotemBandit_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function GrimtotemBandit_Kick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11978, pUnit:GetMainTank()) 
end

function GrimtotemBandit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemBandit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemBandit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10758, 1, "GrimtotemBandit_OnCombat")
RegisterUnitEvent(10758, 2, "GrimtotemBandit_OnLeaveCombat")
RegisterUnitEvent(10758, 3, "GrimtotemBandit_OnKilledTarget")
RegisterUnitEvent(10758, 4, "GrimtotemBandit_OnDied")

--[[ Thousand Needles -- Grimtotem Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemGeomancer_Slow", 15000, 0)
Unit:RegisterEvent("GrimtotemGeomancer_Flamestrike", 10000, 0)
Unit:RegisterEvent("GrimtotemGeomancer_Fireball", 5000, 0)
end

function GrimtotemGeomancer_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11436, pUnit:GetMainTank()) 
end

function GrimtotemGeomancer_Flamestrike(pUnit, Event) 
pUnit:CastSpell(20813) 
end

function GrimtotemGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20811, pUnit:GetMainTank()) 
end

function GrimtotemGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10760, 1, "GrimtotemGeomancer_OnCombat")
RegisterUnitEvent(10760, 2, "GrimtotemGeomancer_OnLeaveCombat")
RegisterUnitEvent(10760, 3, "GrimtotemGeomancer_OnKilledTarget")
RegisterUnitEvent(10760, 4, "GrimtotemGeomancer_OnDied")

--[[ Thousand Needles -- Grimtotem Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemReaver_Cleave", 4000, 0)
Unit:RegisterEvent("GrimtotemReaver_Strike", 5000, 0)
end

function GrimtotemReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function GrimtotemReaver_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GrimtotemReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10761, 1, "GrimtotemReaver_OnCombat")
RegisterUnitEvent(10761, 2, "GrimtotemReaver_OnLeaveCombat")
RegisterUnitEvent(10761, 3, "GrimtotemReaver_OnKilledTarget")
RegisterUnitEvent(10761, 4, "GrimtotemReaver_OnDied")

--[[ Thousand Needles -- Grimtotem Stomper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemStomper_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemStomper_EarthShock", 4000, 0)
Unit:RegisterEvent("GrimtotemReaver_HealingWard", 8000, 0)
end

function GrimtotemStomper_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13281, pUnit:GetMainTank()) 
end

function GrimtotemReaver_HealingWard(pUnit, Event) 
pUnit:CastSpell(5605) 
end

function GrimtotemStomper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemStomper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemStomper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10759, 1, "GrimtotemStomper_OnCombat")
RegisterUnitEvent(10759, 2, "GrimtotemStomper_OnLeaveCombat")
RegisterUnitEvent(10759, 3, "GrimtotemStomper_OnKilledTarget")
RegisterUnitEvent(10759, 4, "GrimtotemStomper_OnDied")

--[[ Thousand Needles -- Harb Foulmountain.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HarbFoulmountain_OnCombat(Unit, Event)
Unit:RegisterEvent("HarbFoulmountain_Thrash", 6000, 0)
Unit:RegisterEvent("HarbFoulmountain_WarStomp", 8000, 0)
end

function HarbFoulmountain_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function HarbFoulmountain_WarStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45, pUnit:GetMainTank()) 
end

function HarbFoulmountain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HarbFoulmountain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HarbFoulmountain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14426, 1, "HarbFoulmountain_OnCombat")
RegisterUnitEvent(14426, 2, "HarbFoulmountain_OnLeaveCombat")
RegisterUnitEvent(14426, 3, "HarbFoulmountain_OnKilledTarget")
RegisterUnitEvent(14426, 4, "HarbFoulmountain_OnDied")

--[[ Thousand Needles -- Highperch Patriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HighperchPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchPatriarch_Poison", 12000, 0)
end

function HighperchPatriarch_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4110, 1, "HighperchPatriarch_OnCombat")
RegisterUnitEvent(4110, 2, "HighperchPatriarch_OnLeaveCombat")
RegisterUnitEvent(4110, 3, "HighperchPatriarch_OnKilledTarget")
RegisterUnitEvent(4110, 4, "HighperchPatriarch_OnDied")

--[[ Thousand Needles -- Heartrazor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Heartrazor_OnCombat(Unit, Event)
Unit:RegisterEvent("Heartrazor_LethalToxin", 12000, 0)
end

function Heartrazor_LethalToxin(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8256, pUnit:GetMainTank()) 
end

function Heartrazor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Heartrazor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Heartrazor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5934, 1, "Heartrazor_OnCombat")
RegisterUnitEvent(5934, 2, "Heartrazor_OnLeaveCombat")
RegisterUnitEvent(5934, 3, "Heartrazor_OnKilledTarget")
RegisterUnitEvent(5934, 4, "Heartrazor_OnDied")

--[[ Thousand Needles -- Highperch Consort.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HighperchConsort_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchConsort_Poison", 12000, 0)
end

function HighperchConsort_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchConsort_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchConsort_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchConsort_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4109, 1, "HighperchConsort_OnCombat")
RegisterUnitEvent(4109, 2, "HighperchConsort_OnLeaveCombat")
RegisterUnitEvent(4109, 3, "HighperchConsort_OnKilledTarget")
RegisterUnitEvent(4109, 4, "HighperchConsort_OnDied")

--[[ Thousand Needles -- Highperch Wyvern.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HighperchWyvern_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchWyvern_Poison", 12000, 0)
end

function HighperchWyvern_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchWyvern_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchWyvern_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchWyvern_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4107, 1, "HighperchWyvern_OnCombat")
RegisterUnitEvent(4107, 2, "HighperchWyvern_OnLeaveCombat")
RegisterUnitEvent(4107, 3, "HighperchWyvern_OnKilledTarget")
RegisterUnitEvent(4107, 4, "HighperchWyvern_OnDied")

--[[ Thousand Needles -- Pesterhide Snarler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PesterhideSnarler_OnCombat(Unit, Event)
Unit:RegisterEvent("PesterhideSnarler_IntimidatingGrowl", 8000, 0)
end

function PesterhideSnarler_IntimidatingGrowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6576, pUnit:GetMainTank()) 
end

function PesterhideSnarler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PesterhideSnarler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PesterhideSnarler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4249, 1, "PesterhideSnarler_OnCombat")
RegisterUnitEvent(4249, 2, "PesterhideSnarler_OnLeaveCombat")
RegisterUnitEvent(4249, 3, "PesterhideSnarler_OnKilledTarget")
RegisterUnitEvent(4249, 4, "PesterhideSnarler_OnDied")

--[[ Thousand Needles -- Salt Flats Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltFlatsScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltFlatsScavenger_Execute", 6000, 0)
end

function SaltFlatsScavenger_Execute(pUnit, Event) 
if Unit:GetHealthEnemy() < 20 then
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end
end

function SaltFlatsScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltFlatsScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltFlatsScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4154, 1, "SaltFlatsScavenger_OnCombat")
RegisterUnitEvent(4154, 2, "SaltFlatsScavenger_OnLeaveCombat")
RegisterUnitEvent(4154, 3, "SaltFlatsScavenger_OnKilledTarget")
RegisterUnitEvent(4154, 4, "SaltFlatsScavenger_OnDied")

--[[ Thousand Needles -- Salt Flats Vulture.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltFlatsVulture_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltFlatsVulture_Execute", 6000, 0)
end

function SaltFlatsVulture_Execute(pUnit, Event) 
if Unit:GetHealthEnemy() < 20 then
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end
end

function SaltFlatsVulture_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltFlatsVulture_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltFlatsVulture_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4158, 1, "SaltFlatsVulture_OnCombat")
RegisterUnitEvent(4158, 2, "SaltFlatsVulture_OnLeaveCombat")
RegisterUnitEvent(4158, 3, "SaltFlatsVulture_OnKilledTarget")
RegisterUnitEvent(4158, 4, "SaltFlatsVulture_OnDied")

--[[ Thousand Needles -- Saltstone Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltstoneBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneBasilisk_CrystallineSlumber", 12000, 0)
end

function SaltstoneBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function SaltstoneBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4147, 1, "SaltstoneBasilisk_OnCombat")
RegisterUnitEvent(4147, 2, "SaltstoneBasilisk_OnLeaveCombat")
RegisterUnitEvent(4147, 3, "SaltstoneBasilisk_OnKilledTarget")
RegisterUnitEvent(4147, 4, "SaltstoneBasilisk_OnDied")

--[[ Thousand Needles -- Saltstone Crystalhide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltstoneCrystalhide_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneCrystalhide_ManaBurn", 6000, 0)
end

function SaltstoneCrystalhide_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8129, pUnit:GetRandomPlayer(4)) 
end

function SaltstoneCrystalhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneCrystalhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneCrystalhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4151, 1, "SaltstoneCrystalhide_OnCombat")
RegisterUnitEvent(4151, 2, "SaltstoneCrystalhide_OnLeaveCombat")
RegisterUnitEvent(4151, 3, "SaltstoneCrystalhide_OnKilledTarget")
RegisterUnitEvent(4151, 4, "SaltstoneCrystalhide_OnDied")

--[[ Thousand Needles -- Saltstone Gazer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltstoneGazer_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneGazer_CrystalGaze", 12000, 0)
end

function SaltstoneGazer_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3635, pUnit:GetMainTank()) 
end

function SaltstoneGazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneGazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneGazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4150, 1, "SaltstoneGazer_OnCombat")
RegisterUnitEvent(4150, 2, "SaltstoneGazer_OnLeaveCombat")
RegisterUnitEvent(4150, 3, "SaltstoneGazer_OnKilledTarget")
RegisterUnitEvent(4150, 4, "SaltstoneGazer_OnDied")

--[[ Thousand Needles -- Scalding Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScaldingElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("ScaldingElemental_Scald", 10000, 0)
end

function ScaldingElemental_Scald(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17276, pUnit:GetMainTank()) 
end

function ScaldingElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScaldingElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScaldingElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10756, 1, "ScaldingElemental_OnCombat")
RegisterUnitEvent(10756, 2, "ScaldingElemental_OnLeaveCombat")
RegisterUnitEvent(10756, 3, "ScaldingElemental_OnKilledTarget")
RegisterUnitEvent(10756, 4, "ScaldingElemental_OnDied")

--[[ Thousand Needles -- Scorpid Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScorpidReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidReaver_Cleave", 4000, 0)
end

function ScorpidReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function ScorpidReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4140, 1, "ScorpidReaver_OnCombat")
RegisterUnitEvent(4140, 2, "ScorpidReaver_OnLeaveCombat")
RegisterUnitEvent(4140, 3, "ScorpidReaver_OnKilledTarget")
RegisterUnitEvent(4140, 4, "ScorpidReaver_OnDied")

--[[ Thousand Needles -- Scorpid Terror.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScorpidTerror_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidTerror_Terrify", 10000, 0)
end

function ScorpidTerror_Terrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7399, pUnit:GetMainTank()) 
end

function ScorpidTerror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidTerror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidTerror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4139, 1, "ScorpidTerror_OnCombat")
RegisterUnitEvent(4139, 2, "ScorpidTerror_OnLeaveCombat")
RegisterUnitEvent(4139, 3, "ScorpidTerror_OnKilledTarget")
RegisterUnitEvent(4139, 4, "ScorpidTerror_OnDied")

--[[ Thousand Needles -- Screeching Harpy.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScreechingHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingHarpy_DeafeningScreech", 10000, 0)
end

function ScreechingHarpy_DeafeningScreech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3589, pUnit:GetMainTank()) 
end

function ScreechingHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4100, 1, "ScreechingHarpy_OnCombat")
RegisterUnitEvent(4100, 2, "ScreechingHarpy_OnLeaveCombat")
RegisterUnitEvent(4100, 3, "ScreechingHarpy_OnKilledTarget")
RegisterUnitEvent(4100, 4, "ScreechingHarpy_OnDied")

--[[ Thousand Needles -- Screeching Roguefeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScreechingRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingRoguefeather_ExploitWeakness", 5000, 0)
end

function ScreechingRoguefeather_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function ScreechingRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4101, 1, "ScreechingRoguefeather_OnCombat")
RegisterUnitEvent(4101, 2, "ScreechingRoguefeather_OnLeaveCombat")
RegisterUnitEvent(4101, 3, "ScreechingRoguefeather_OnKilledTarget")
RegisterUnitEvent(4101, 4, "ScreechingRoguefeather_OnDied")

--[[ Thousand Needles -- Screeching Windcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScreechingWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingWindcaller_GustofWind", 10000, 0)
end

function ScreechingWindcaller_GustofWind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6982, pUnit:GetMainTank()) 
end

function ScreechingWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4104, 1, "ScreechingWindcaller_OnCombat")
RegisterUnitEvent(4104, 2, "ScreechingWindcaller_OnLeaveCombat")
RegisterUnitEvent(4104, 3, "ScreechingWindcaller_OnKilledTarget")
RegisterUnitEvent(4104, 4, "ScreechingWindcaller_OnDied")

--[[ Thousand Needles -- Silithid Invader.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SilithidInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidInvader_PierceArmor", 10000, 0)
end

function SilithidInvader_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SilithidInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4131, 1, "SilithidInvader_OnCombat")
RegisterUnitEvent(4131, 2, "SilithidInvader_OnLeaveCombat")
RegisterUnitEvent(4131, 3, "SilithidInvader_OnKilledTarget")
RegisterUnitEvent(4131, 4, "SilithidInvader_OnDied")

--[[ Thousand Needles -- Silithid Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SilithidRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidRavager_StrongCleave", 5000, 0)
end

function SilithidRavager_StrongCleave(pUnit, Event) 
pUnit:CastSpell(8255) 
end

function SilithidRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4132, 1, "SilithidRavager_OnCombat")
RegisterUnitEvent(4132, 2, "SilithidRavager_OnLeaveCombat")
RegisterUnitEvent(4132, 3, "SilithidRavager_OnKilledTarget")
RegisterUnitEvent(4132, 4, "SilithidRavager_OnDied")

--[[ Thousand Needles -- Sparkleshell Borer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SparkleshellBorer_OnCombat(Unit, Event)
Unit:RegisterEvent("SparkleshellBorer_PierceArmor", 10000, 0)
end

function SparkleshellBorer_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SparkleshellBorer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SparkleshellBorer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SparkleshellBorer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4144, 1, "SparkleshellBorer_OnCombat")
RegisterUnitEvent(4144, 2, "SparkleshellBorer_OnLeaveCombat")
RegisterUnitEvent(4144, 3, "SparkleshellBorer_OnKilledTarget")
RegisterUnitEvent(4144, 4, "SparkleshellBorer_OnDied")

--[[ Thousand Needles -- Sparkleshell Snapper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SparkleshellSnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("SparkleshellSnapper_HeadButt", 10000, 0)
end

function SparkleshellSnapper_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6730, pUnit:GetClosestPlayer()) 
end

function SparkleshellSnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SparkleshellSnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SparkleshellSnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4143, 1, "SparkleshellSnapper_OnCombat")
RegisterUnitEvent(4143, 2, "SparkleshellSnapper_OnLeaveCombat")
RegisterUnitEvent(4143, 3, "SparkleshellSnapper_OnKilledTarget")
RegisterUnitEvent(4143, 4, "SparkleshellSnapper_OnDied")

--[[ Thousand Needles -- Thundering Boulderkin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ThunderingBoulderkin_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderingBoulderkin_GroundTremor", 10000, 0)
end

function ThunderingBoulderkin_GroundTremor(pUnit, Event) 
pUnit:CastSpell(6524) 
end

function ThunderingBoulderkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderingBoulderkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderingBoulderkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4120, 1, "ThunderingBoulderkin_OnCombat")
RegisterUnitEvent(4120, 2, "ThunderingBoulderkin_OnLeaveCombat")
RegisterUnitEvent(4120, 3, "ThunderingBoulderkin_OnKilledTarget")
RegisterUnitEvent(4120, 4, "ThunderingBoulderkin_OnDied")

--[[ Thousand Needles -- Venomous Cloud Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function VenomousCloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomousCloudSerpent_DeadlyPoison", 10000, 0)
end

function VenomousCloudSerpent_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function VenomousCloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomousCloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomousCloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4118, 1, "VenomousCloudSerpent_OnCombat")
RegisterUnitEvent(4118, 2, "VenomousCloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4118, 3, "VenomousCloudSerpent_OnKilledTarget")
RegisterUnitEvent(4118, 4, "VenomousCloudSerpent_OnDied")

--[[ Thousand Needles -- Vile Sting.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function VileSting_OnCombat(Unit, Event)
Unit:RegisterEvent("VileSting_VenomSting", 10000, 0)
end

function VileSting_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8257, pUnit:GetMainTank()) 
end

function VileSting_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VileSting_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VileSting_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5937, 1, "VileSting_OnCombat")
RegisterUnitEvent(5937, 2, "VileSting_OnLeaveCombat")
RegisterUnitEvent(5937, 3, "VileSting_OnKilledTarget")
RegisterUnitEvent(5937, 4, "VileSting_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 and Mikebeck
    BlackHer0, Novembar, 1th, 2008. --]]