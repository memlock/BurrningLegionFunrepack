--[[ Desolace -- Ambereye Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function AmbereyeBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbereyeBasilisk_Petrify", 15000, 0)
end

function AmbereyeBasilisk_Petrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function AmbereyeBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbereyeBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbereyeBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11785, 1, "AmbereyeBasilisk_OnCombat")
RegisterUnitEvent(11785, 2, "AmbereyeBasilisk_OnLeaveCombat")
RegisterUnitEvent(11785, 3, "AmbereyeBasilisk_OnKilledTarget")
RegisterUnitEvent(11785, 4, "AmbereyeBasilisk_OnDied")


--[[ Desolace -- Ambereye Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function AmbereyeReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbereyeReaver_Cleave", 8000, 0)
Unit:RegisterEvent("AmbereyeReaver_Petrify", 15000, 0)
end

function AmbereyeReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function AmbereyeReaver_Petrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function AmbereyeReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbereyeReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbereyeReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11786, 1, "AmbereyeReaver_OnCombat")
RegisterUnitEvent(11786, 2, "AmbereyeReaver_OnLeaveCombat")
RegisterUnitEvent(11786, 3, "AmbereyeReaver_OnKilledTarget")
RegisterUnitEvent(11786, 4, "AmbereyeReaver_OnDied")


--[[ Desolace -- Ambershard Crusher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function AmbershardCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbershardCrusher_CrushArmor", 5000, 1)
end

function AmbershardCrusher_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21055, pUnit:GetMainTank()) 
end

function AmbershardCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbershardCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbershardCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11781, 1, "AmbershardCrusher_OnCombat")
RegisterUnitEvent(11781, 2, "AmbershardCrusher_OnLeaveCombat")
RegisterUnitEvent(11781, 3, "AmbershardCrusher_OnKilledTarget")
RegisterUnitEvent(11781, 4, "AmbershardCrusher_OnDied")


--[[ Desolace -- Ambershard Destroyer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function AmbershardDestroyer_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbershardDestroyer_Boulder", 8000, 0)
Unit:RegisterEvent("AmbershardDestroyer_EarthShock", 11000, 0)
end

function AmbershardDestroyer_Boulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19701, pUnit:GetMainTank()) 
end

function AmbershardDestroyer_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13728, pUnit:GetMainTank()) 
end

function AmbershardDestroyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbershardDestroyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbershardDestroyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11782, 1, "AmbershardDestroyer_OnCombat")
RegisterUnitEvent(11782, 2, "AmbershardDestroyer_OnLeaveCombat")
RegisterUnitEvent(11782, 3, "AmbershardDestroyer_OnKilledTarget")
RegisterUnitEvent(11782, 4, "AmbershardDestroyer_OnDied")


--[[ Desolace -- Burning Blade Adept.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeAdept_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeAdept_Bloodlust", 5000, 1)
Unit:RegisterEvent("BurningBladeAdept_Fireball", 8000, 0)
end

function BurningBladeAdept_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function BurningBladeAdept_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function BurningBladeAdept_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeAdept_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeAdept_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4665, 1, "BurningBladeAdept_OnCombat")
RegisterUnitEvent(4665, 2, "BurningBladeAdept_OnLeaveCombat")
RegisterUnitEvent(4665, 3, "BurningBladeAdept_OnKilledTarget")
RegisterUnitEvent(4665, 4, "BurningBladeAdept_OnDied")


--[[ Desolace -- Burning Blade Augur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeAugur_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeAugur_CurseofThorns", 5000, 1)
Unit:RegisterEvent("BurningBladeAugur_ShadowBolt", 8000, 0)
end

function BurningBladeAugur_CurseofThorns(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6909, pUnit:GetMainTank()) 
end

function BurningBladeAugur_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20807, pUnit:GetMainTank()) 
end

function BurningBladeAugur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeAugur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeAugur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4663, 1, "BurningBladeAugur_OnCombat")
RegisterUnitEvent(4663, 2, "BurningBladeAugur_OnLeaveCombat")
RegisterUnitEvent(4663, 3, "BurningBladeAugur_OnKilledTarget")
RegisterUnitEvent(4663, 4, "BurningBladeAugur_OnDied")


--[[ Desolace -- Burning Blade Invoker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeInvoker_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeInvoker_FlameBuffet", 8000, 0)
end

function BurningBladeInvoker_FlameBuffet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9658, pUnit:GetMainTank()) 
end

function BurningBladeInvoker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeInvoker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeInvoker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4705, 1, "BurningBladeInvoker_OnCombat")
RegisterUnitEvent(4705, 2, "BurningBladeInvoker_OnLeaveCombat")
RegisterUnitEvent(4705, 3, "BurningBladeInvoker_OnKilledTarget")
RegisterUnitEvent(4705, 4, "BurningBladeInvoker_OnDied")


--[[ Desolace -- Burning Blade Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeReaver_ArcingSmash", 8000, 0)
end

function BurningBladeReaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function BurningBladeReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4664, 1, "BurningBladeReaver_OnCombat")
RegisterUnitEvent(4664, 2, "BurningBladeReaver_OnLeaveCombat")
RegisterUnitEvent(4664, 3, "BurningBladeReaver_OnKilledTarget")
RegisterUnitEvent(4664, 4, "BurningBladeReaver_OnDied")


--[[ Desolace -- Burning Blade Seer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeSeer_FlameBuffet", 8000, 0)
Unit:RegisterEvent("BurningBladeSeer_Flamestrike", 11000, 0)
end

function BurningBladeSeer_FlameBuffet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9658, pUnit:GetMainTank()) 
end

function BurningBladeSeer_Flamestrike(pUnit, Event) 
pUnit:CastSpell(11829) 
end

function BurningBladeSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(13019, 1, "BurningBladeSeer_OnCombat")
RegisterUnitEvent(13019, 2, "BurningBladeSeer_OnLeaveCombat")
RegisterUnitEvent(13019, 3, "BurningBladeSeer_OnKilledTarget")
RegisterUnitEvent(13019, 4, "BurningBladeSeer_OnDied")


--[[ Desolace -- Burning Blade Shadowmage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeShadowmage_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeShadowmage_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BurningBladeShadowmage_ShadowShell", 10000, 0)
end

function BurningBladeShadowmage_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20816, pUnit:GetMainTank()) 
end

function BurningBladeShadowmage_ShadowShell(pUnit, Event) 
pUnit:CastSpell(9657) 
end

function BurningBladeShadowmage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeShadowmage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeShadowmage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4667, 1, "BurningBladeShadowmage_OnCombat")
RegisterUnitEvent(4667, 2, "BurningBladeShadowmage_OnLeaveCombat")
RegisterUnitEvent(4667, 3, "BurningBladeShadowmage_OnKilledTarget")
RegisterUnitEvent(4667, 4, "BurningBladeShadowmage_OnDied")


--[[ Desolace -- Burning Blade Summoner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeSummoner_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeSummoner_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BurningBladeSummoner_SummonImp", 5000, 1)
end

function BurningBladeSummoner_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20825, pUnit:GetMainTank()) 
end

function BurningBladeSummoner_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function BurningBladeSummoner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeSummoner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeSummoner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4668, 1, "BurningBladeSummoner_OnCombat")
RegisterUnitEvent(4668, 2, "BurningBladeSummoner_OnLeaveCombat")
RegisterUnitEvent(4668, 3, "BurningBladeSummoner_OnKilledTarget")
RegisterUnitEvent(4668, 4, "BurningBladeSummoner_OnDied")


--[[ Desolace -- Carrion Horror.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function CarrionHorror_OnCombat(Unit, Event)
Unit:RegisterEvent("CarrionHorror_InfectedWound", 5000, 2)
end

function CarrionHorror_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3427, pUnit:GetMainTank()) 
end

function CarrionHorror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CarrionHorror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CarrionHorror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4695, 1, "CarrionHorror_OnCombat")
RegisterUnitEvent(4695, 2, "CarrionHorror_OnLeaveCombat")
RegisterUnitEvent(4695, 3, "CarrionHorror_OnKilledTarget")
RegisterUnitEvent(4695, 4, "CarrionHorror_OnDied")


--[[ Desolace -- Crusty.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function Crusty_OnCombat(Unit, Event)
Unit:RegisterEvent("Crusty_Enrage", 10000, 1)
end

function Crusty_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Crusty_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Crusty_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Crusty_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18241, 1, "Crusty_OnCombat")
RegisterUnitEvent(18241, 2, "Crusty_OnLeaveCombat")
RegisterUnitEvent(18241, 3, "Crusty_OnKilledTarget")
RegisterUnitEvent(18241, 4, "Crusty_OnDied")


--[[ Desolace -- Demon Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DemonSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("DemonSpirit_SummonedDemon", 5000, 1)
end

function DemonSpirit_SummonedDemon(pUnit, Event) 
pUnit:CastSpell(7741) 
end

function DemonSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DemonSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DemonSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11876, 1, "DemonSpirit_OnCombat")
RegisterUnitEvent(11876, 2, "DemonSpirit_OnLeaveCombat")
RegisterUnitEvent(11876, 3, "DemonSpirit_OnKilledTarget")
RegisterUnitEvent(11876, 4, "DemonSpirit_OnDied")


--[[ Desolace -- Doomwarder Captain.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DoomwarderCaptain_OnCombat(Unit, Event)
Unit:RegisterEvent("DoomwarderCaptain_BattleShout", 5000, 1)
Unit:RegisterEvent("DoomwarderCaptain_Ignite", 10000, 0)
end

function DoomwarderCaptain_BattleShout(pUnit, Event) 
pUnit:CastSpell(6192) 
end

function DoomwarderCaptain_Ignite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3261, pUnit:GetMainTank()) 
end

function DoomwarderCaptain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DoomwarderCaptain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DoomwarderCaptain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4680, 1, "DoomwarderCaptain_OnCombat")
RegisterUnitEvent(4680, 2, "DoomwarderCaptain_OnLeaveCombat")
RegisterUnitEvent(4680, 3, "DoomwarderCaptain_OnKilledTarget")
RegisterUnitEvent(4680, 4, "DoomwarderCaptain_OnDied")


--[[ Desolace -- Dread Flyer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DreadFlyer_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadFlyer_Disarm", 10000, 0)
end

function DreadFlyer_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function DreadFlyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadFlyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadFlyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4693, 1, "DreadFlyer_OnCombat")
RegisterUnitEvent(4693, 2, "DreadFlyer_OnLeaveCombat")
RegisterUnitEvent(4693, 3, "DreadFlyer_OnKilledTarget")
RegisterUnitEvent(4693, 4, "DreadFlyer_OnDied")


--[[ Desolace -- Dread Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DreadRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadRipper_RendFlesh", 8000, 0)
end

function DreadRipper_RendFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3147, pUnit:GetMainTank()) 
end

function DreadRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4694, 1, "DreadRipper_OnCombat")
RegisterUnitEvent(4694, 2, "DreadRipper_OnLeaveCombat")
RegisterUnitEvent(4694, 3, "DreadRipper_OnKilledTarget")
RegisterUnitEvent(4694, 4, "DreadRipper_OnDied")


--[[ Desolace -- Dread Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DreadSwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadSwoop_Swoop", 8000, 0)
end

function DreadSwoop_Swoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function DreadSwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadSwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadSwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4692, 1, "DreadSwoop_OnCombat")
RegisterUnitEvent(4692, 2, "DreadSwoop_OnLeaveCombat")
RegisterUnitEvent(4692, 3, "DreadSwoop_OnKilledTarget")
RegisterUnitEvent(4692, 4, "DreadSwoop_OnDied")


--[[ Desolace -- Drysnap Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DrysnapCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("DrysnapCrawler_FrostArmor", 4000, 1)
Unit:RegisterEvent("DrysnapCrawler_FrostShock", 9000, 0)
end

function DrysnapCrawler_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function DrysnapCrawler_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function DrysnapCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrysnapCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrysnapCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11562, 1, "DrysnapCrawler_OnCombat")
RegisterUnitEvent(11562, 2, "DrysnapCrawler_OnLeaveCombat")
RegisterUnitEvent(11562, 3, "DrysnapCrawler_OnKilledTarget")
RegisterUnitEvent(11562, 4, "DrysnapCrawler_OnDied")


--[[ Desolace -- Drysnap Pincer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DrysnapPincer_OnCombat(Unit, Event)
Unit:RegisterEvent("DrysnapPincer_Rend", 10000, 0)
Unit:RegisterEvent("DrysnapPincer_SunderArmor", 6000, 0)
end

function DrysnapPincer_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function DrysnapPincer_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13444, pUnit:GetMainTank()) 
end

function DrysnapPincer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrysnapPincer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrysnapPincer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11563, 1, "DrysnapPincer_OnCombat")
RegisterUnitEvent(11563, 2, "DrysnapPincer_OnLeaveCombat")
RegisterUnitEvent(11563, 3, "DrysnapPincer_OnKilledTarget")
RegisterUnitEvent(11563, 4, "DrysnapPincer_OnDied")


--[[ Desolace -- Elder Thunder Lizard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function ElderThunderLizard_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderThunderLizard_LizardBolt", 8000, 0)
end

function ElderThunderLizard_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function ElderThunderLizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderThunderLizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderThunderLizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4727, 1, "ElderThunderLizard_OnCombat")
RegisterUnitEvent(4727, 2, "ElderThunderLizard_OnLeaveCombat")
RegisterUnitEvent(4727, 3, "ElderThunderLizard_OnKilledTarget")
RegisterUnitEvent(4727, 4, "ElderThunderLizard_OnDied")


--[[ Desolace -- Enraged Reef Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function EnragedReefCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedReefCrawler_Enrage", 10000, 1)
end

function EnragedReefCrawler_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function EnragedReefCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedReefCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedReefCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12347, 1, "EnragedReefCrawler_OnCombat")
RegisterUnitEvent(12347, 2, "EnragedReefCrawler_OnLeaveCombat")
RegisterUnitEvent(12347, 3, "EnragedReefCrawler_OnKilledTarget")
RegisterUnitEvent(12347, 4, "EnragedReefCrawler_OnDied")


--[[ Desolace -- Gelkis Earthcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisEarthcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisEarthcaller_Fireball", 8000, 0)
Unit:RegisterEvent("GelkisEarthcaller_SummonGelkisRumbler", 4000, 1)
end

function GelkisEarthcaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20815, pUnit:GetMainTank()) 
end

function GelkisEarthcaller_SummonGelkisRumbler(pUnit, Event) 
pUnit:CastSpell(9653) 
end

function GelkisEarthcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisEarthcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisEarthcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4651, 1, "GelkisEarthcaller_OnCombat")
RegisterUnitEvent(4651, 2, "GelkisEarthcaller_OnLeaveCombat")
RegisterUnitEvent(4651, 3, "GelkisEarthcaller_OnKilledTarget")
RegisterUnitEvent(4651, 4, "GelkisEarthcaller_OnDied")


--[[ Desolace -- Gelkis Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisMarauder_BerserkerStance", 3000, 1)
Unit:RegisterEvent("GelkisMarauder_Cleave", 8000, 0)
end

function GelkisMarauder_BerserkerStance(pUnit, Event) 
pUnit:CastSpell(7366) 
end

function GelkisMarauder_Cleave(pUnit, Event) 
pUnit:CastSpell(845) 
end

function GelkisMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4653, 1, "GelkisMarauder_OnCombat")
RegisterUnitEvent(4653, 2, "GelkisMarauder_OnLeaveCombat")
RegisterUnitEvent(4653, 3, "GelkisMarauder_OnKilledTarget")
RegisterUnitEvent(4653, 4, "GelkisMarauder_OnDied")


--[[ Desolace -- Gelkis Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisMauler_Thrash", 5000, 0)
end

function GelkisMauler_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function GelkisMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4652, 1, "GelkisMauler_OnCombat")
RegisterUnitEvent(4652, 2, "GelkisMauler_OnLeaveCombat")
RegisterUnitEvent(4652, 3, "GelkisMauler_OnKilledTarget")
RegisterUnitEvent(4652, 4, "GelkisMauler_OnDied")


--[[ Desolace -- Gelkis Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisScout_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisScout_Shoot", 6000, 0)
end

function GelkisScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GelkisScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4647, 1, "GelkisScout_OnCombat")
RegisterUnitEvent(4647, 2, "GelkisScout_OnLeaveCombat")
RegisterUnitEvent(4647, 3, "GelkisScout_OnKilledTarget")
RegisterUnitEvent(4647, 4, "GelkisScout_OnDied")


--[[ Desolace -- Gelkis Stamper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisStamper_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisStamper_Trample", 6000, 0)
end

function GelkisStamper_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function GelkisStamper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisStamper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisStamper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4648, 1, "GelkisStamper_OnCombat")
RegisterUnitEvent(4648, 2, "GelkisStamper_OnLeaveCombat")
RegisterUnitEvent(4648, 3, "GelkisStamper_OnKilledTarget")
RegisterUnitEvent(4648, 4, "GelkisStamper_OnDied")


--[[ Desolace -- Gelkis Windchaser.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisWindchaser_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisWindchaser_HealingWave", 16000, 0)
Unit:RegisterEvent("GelkisWindchaser_LightningBolt", 8000, 0)
end

function GelkisWindchaser_HealingWave(pUnit, Event) 
pUnit:CastSpell(959) 
end

function GelkisWindchaser_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function GelkisWindchaser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisWindchaser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisWindchaser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4649, 1, "GelkisWindchaser_OnCombat")
RegisterUnitEvent(4649, 2, "GelkisWindchaser_OnLeaveCombat")
RegisterUnitEvent(4649, 3, "GelkisWindchaser_OnKilledTarget")
RegisterUnitEvent(4649, 4, "GelkisWindchaser_OnDied")


--[[ Desolace -- Ghostly Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GhostlyMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlyMarauder_Strike", 6000, 0)
end

function GhostlyMarauder_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GhostlyMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlyMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlyMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11687, 1, "GhostlyMarauder_OnCombat")
RegisterUnitEvent(11687, 2, "GhostlyMarauder_OnLeaveCombat")
RegisterUnitEvent(11687, 3, "GhostlyMarauder_OnKilledTarget")
RegisterUnitEvent(11687, 4, "GhostlyMarauder_OnDied")


--[[ Desolace -- Ghostly Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GhostlyRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlyRaider_ConcussiveShot", 10000, 0)
Unit:RegisterEvent("GhostlyRaider_Net", 11000, 0)
Unit:RegisterEvent("GhostlyRaider_Shoot", 6000, 0)
end

function GhostlyRaider_ConcussiveShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17174, pUnit:GetMainTank()) 
end

function GhostlyRaider_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function GhostlyRaider_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GhostlyRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlyRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlyRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11686, 1, "GhostlyRaider_OnCombat")
RegisterUnitEvent(11686, 2, "GhostlyRaider_OnLeaveCombat")
RegisterUnitEvent(11686, 3, "GhostlyRaider_OnKilledTarget")
RegisterUnitEvent(11686, 4, "GhostlyRaider_OnDied")


--[[ Desolace -- Hatefury Betrayer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryBetrayer_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryBetrayer_Enrage", 10000, 1)
end

function HatefuryBetrayer_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryBetrayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryBetrayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryBetrayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4673, 1, "HatefuryBetrayer_OnCombat")
RegisterUnitEvent(4673, 2, "HatefuryBetrayer_OnLeaveCombat")
RegisterUnitEvent(4673, 3, "HatefuryBetrayer_OnKilledTarget")
RegisterUnitEvent(4673, 4, "HatefuryBetrayer_OnDied")


--[[ Desolace -- Hatefury Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryFelsworn_Enrage", 10000, 1)
end

function HatefuryFelsworn_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4672, 1, "HatefuryFelsworn_OnCombat")
RegisterUnitEvent(4672, 2, "HatefuryFelsworn_OnLeaveCombat")
RegisterUnitEvent(4672, 3, "HatefuryFelsworn_OnKilledTarget")
RegisterUnitEvent(4672, 4, "HatefuryFelsworn_OnDied")


--[[ Desolace -- Hatefury Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryHellcaller_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryHellcaller_Immolate", 5000, 1)
Unit:RegisterEvent("HatefuryHellcaller_RainofFire", 11000, 0)
end

function HatefuryHellcaller_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryHellcaller_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function HatefuryHellcaller_RainofFire(pUnit, Event) 
pUnit:CastSpell(39273) 
end

function HatefuryHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4675, 1, "HatefuryHellcaller_OnCombat")
RegisterUnitEvent(4675, 2, "HatefuryHellcaller_OnLeaveCombat")
RegisterUnitEvent(4675, 3, "HatefuryHellcaller_OnKilledTarget")
RegisterUnitEvent(4675, 4, "HatefuryHellcaller_OnDied")


--[[ Desolace -- Hatefury Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryRogue_Enrage", 10000, 1)
end

function HatefuryRogue_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4670, 1, "HatefuryRogue_OnCombat")
RegisterUnitEvent(4670, 2, "HatefuryRogue_OnLeaveCombat")
RegisterUnitEvent(4670, 3, "HatefuryRogue_OnKilledTarget")
RegisterUnitEvent(4670, 4, "HatefuryRogue_OnDied")


--[[ Desolace -- Hatefury Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryShadowstalker_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryShadowstalker_ExploitWeakness", 11000, 0)
Unit:RegisterEvent("HatefuryShadowstalker_Gouge", 8000, 0)
end

function HatefuryShadowstalker_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryShadowstalker_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function HatefuryShadowstalker_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8629, pUnit:GetMainTank()) 
end

function HatefuryShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4674, 1, "HatefuryShadowstalker_OnCombat")
RegisterUnitEvent(4674, 2, "HatefuryShadowstalker_OnLeaveCombat")
RegisterUnitEvent(4674, 3, "HatefuryShadowstalker_OnKilledTarget")
RegisterUnitEvent(4674, 4, "HatefuryShadowstalker_OnDied")


--[[ Desolace -- Hatefury Trickster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryTrickster_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryTrickster_Poison", 8000, 1)
end

function HatefuryTrickster_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryTrickster_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HatefuryTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4671, 1, "HatefuryTrickster_OnCombat")
RegisterUnitEvent(4671, 2, "HatefuryTrickster_OnLeaveCombat")
RegisterUnitEvent(4671, 3, "HatefuryTrickster_OnKilledTarget")
RegisterUnitEvent(4671, 4, "HatefuryTrickster_OnDied")


--[[ Desolace -- Hulking Gritjaw Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HulkingGritjawBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingGritjawBasilisk_CrystallineSlumber", 15000, 1)
end

function HulkingGritjawBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function HulkingGritjawBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingGritjawBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingGritjawBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4729, 1, "HulkingGritjawBasilisk_OnCombat")
RegisterUnitEvent(4729, 2, "HulkingGritjawBasilisk_OnLeaveCombat")
RegisterUnitEvent(4729, 3, "HulkingGritjawBasilisk_OnKilledTarget")
RegisterUnitEvent(4729, 4, "HulkingGritjawBasilisk_OnDied")


--[[ Desolace -- Jugkar Grim'rod.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function JugkarGrimrod_OnCombat(Unit, Event)
Unit:RegisterEvent("JugkarGrimrod_CurseofWeakness", 5000, 1)
Unit:RegisterEvent("JugkarGrimrod_Immolate", 6000, 1)
Unit:RegisterEvent("JugkarGrimrod_ShadowBolt", 8000, 0)
end

function JugkarGrimrod_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12741, pUnit:GetMainTank()) 
end

function JugkarGrimrod_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20787, pUnit:GetMainTank()) 
end

function JugkarGrimrod_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12471, pUnit:GetMainTank()) 
end

function JugkarGrimrod_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JugkarGrimrod_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JugkarGrimrod_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5771, 1, "JugkarGrimrod_OnCombat")
RegisterUnitEvent(5771, 2, "JugkarGrimrod_OnLeaveCombat")
RegisterUnitEvent(5771, 3, "JugkarGrimrod_OnKilledTarget")
RegisterUnitEvent(5771, 4, "JugkarGrimrod_OnDied")


