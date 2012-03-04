--[[ Crystalsong Forest -- Alanura Firecloud.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AlanuraFirecloud_OnCombat(Unit, Event)
Unit:RegisterEvent("AlanuraFirecloud_FieryIntellect", 2000, 1)
end

function AlanuraFirecloud_FieryIntellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function AlanuraFirecloud_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AlanuraFirecloud_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AlanuraFirecloud_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30239, 1, "AlanuraFirecloud_OnCombat")
RegisterUnitEvent(30239, 2, "AlanuraFirecloud_OnLeaveCombat")
RegisterUnitEvent(30239, 3, "AlanuraFirecloud_OnKilledTarget")
RegisterUnitEvent(30239, 4, "AlanuraFirecloud_OnDied")


--[[ Crystalsong Forest -- Ancient Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AncientWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientWatcher_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("AncientWatcher_Trample", 6000, 0)
end

function AncientWatcher_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33844, pUnit:GetMainTank()) 
end

function AncientWatcher_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function AncientWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31229, 1, "AncientWatcher_OnCombat")
RegisterUnitEvent(31229, 2, "AncientWatcher_OnLeaveCombat")
RegisterUnitEvent(31229, 3, "AncientWatcher_OnKilledTarget")
RegisterUnitEvent(31229, 4, "AncientWatcher_OnDied")


--[[ Crystalsong Forest -- Azure Manabeast.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AzureManabeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureManabeast_ManaBite", 8000, 0)
end

function AzureManabeast_ManaBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59105, pUnit:GetMainTank()) 
end

function AzureManabeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureManabeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureManabeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31404, 1, "AzureManabeast_OnCombat")
RegisterUnitEvent(31404, 2, "AzureManabeast_OnLeaveCombat")
RegisterUnitEvent(31404, 3, "AzureManabeast_OnKilledTarget")
RegisterUnitEvent(31404, 4, "AzureManabeast_OnDied")


--[[ Crystalsong Forest -- Azure Manashaper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AzureManashaper_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureManashaper_ArcaneBlast", 8000, 0)
Unit:RegisterEvent("AzureManashaper_Slow", 7000, 0)
end

function AzureManashaper_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10833, pUnit:GetMainTank()) 
end

function AzureManashaper_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25603, pUnit:GetMainTank()) 
end

function AzureManashaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureManashaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureManashaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31401, 1, "AzureManashaper_OnCombat")
RegisterUnitEvent(31401, 2, "AzureManashaper_OnLeaveCombat")
RegisterUnitEvent(31401, 3, "AzureManashaper_OnKilledTarget")
RegisterUnitEvent(31401, 4, "AzureManashaper_OnDied")


--[[ Crystalsong Forest -- Azure Spellweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AzureSpellweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureSpellweaver_ArcaneMissiles", 6000, 0)
end

function AzureSpellweaver_ArcaneMissiles(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34447, pUnit:GetMainTank()) 
end

function AzureSpellweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureSpellweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureSpellweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31403, 1, "AzureSpellweaver_OnCombat")
RegisterUnitEvent(31403, 2, "AzureSpellweaver_OnLeaveCombat")
RegisterUnitEvent(31403, 3, "AzureSpellweaver_OnKilledTarget")
RegisterUnitEvent(31403, 4, "AzureSpellweaver_OnDied")


--[[ Crystalsong Forest -- Crystal Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CrystalWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystalWyrm_FrostBreath", 8000, 0)
end

function CrystalWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function CrystalWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystalWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystalWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31393, 1, "CrystalWyrm_OnCombat")
RegisterUnitEvent(31393, 2, "CrystalWyrm_OnLeaveCombat")
RegisterUnitEvent(31393, 3, "CrystalWyrm_OnKilledTarget")
RegisterUnitEvent(31393, 4, "CrystalWyrm_OnDied")


--[[ Crystalsong Forest -- Dappled Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DappledStag_OnCombat(Unit, Event)
Unit:RegisterEvent("DappledStag_Butt", 8000, 0)
end

function DappledStag_Butt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59110, pUnit:GetMainTank()) 
end

function DappledStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DappledStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DappledStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31236, 1, "DappledStag_OnCombat")
RegisterUnitEvent(31236, 2, "DappledStag_OnLeaveCombat")
RegisterUnitEvent(31236, 3, "DappledStag_OnKilledTarget")
RegisterUnitEvent(31236, 4, "DappledStag_OnDied")


--[[ Crystalsong Forest -- Dispirited Ent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DispiritedEnt_OnCombat(Unit, Event)
Unit:RegisterEvent("DispiritedEnt_Rejuvenation", 12000, 0)
Unit:RegisterEvent("DispiritedEnt_Thorns", 2000, 1)
end

function DispiritedEnt_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(15981) 
end

function DispiritedEnt_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function DispiritedEnt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DispiritedEnt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DispiritedEnt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31041, 1, "DispiritedEnt_OnCombat")
RegisterUnitEvent(31041, 2, "DispiritedEnt_OnLeaveCombat")
RegisterUnitEvent(31041, 3, "DispiritedEnt_OnKilledTarget")
RegisterUnitEvent(31041, 4, "DispiritedEnt_OnDied")


--[[ Crystalsong Forest -- Grove Walker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GroveWalker_OnCombat(Unit, Event)
Unit:RegisterEvent("GroveWalker_Rejuvenation", 12000, 0)
Unit:RegisterEvent("GroveWalker_Thorns", 2000, 1)
end

function GroveWalker_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(15981) 
end

function GroveWalker_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function GroveWalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GroveWalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GroveWalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31228, 1, "GroveWalker_OnCombat")
RegisterUnitEvent(31228, 2, "GroveWalker_OnLeaveCombat")
RegisterUnitEvent(31228, 3, "GroveWalker_OnKilledTarget")
RegisterUnitEvent(31228, 4, "GroveWalker_OnDied")


--[[ Crystalsong Forest -- Lost Shandaral Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LostShandaralSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("LostShandaralSpirit_Moonfire", 6000, 0)
Unit:RegisterEvent("LostShandaralSpirit_Regrowth", 13000, 0)
end

function LostShandaralSpirit_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function LostShandaralSpirit_Regrowth(pUnit, Event) 
pUnit:CastSpell(16561) 
end

function LostShandaralSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LostShandaralSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LostShandaralSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31231, 1, "LostShandaralSpirit_OnCombat")
RegisterUnitEvent(31231, 2, "LostShandaralSpirit_OnLeaveCombat")
RegisterUnitEvent(31231, 3, "LostShandaralSpirit_OnKilledTarget")
RegisterUnitEvent(31231, 4, "LostShandaralSpirit_OnDied")


--[[ Crystalsong Forest -- Shandaral Druid Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ShandaralDruidSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralDruidSpirit_Moonfire", 6000, 0)
Unit:RegisterEvent("ShandaralDruidSpirit_Regrowth", 13000, 0)
end

function ShandaralDruidSpirit_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function ShandaralDruidSpirit_Regrowth(pUnit, Event) 
pUnit:CastSpell(16561) 
end

function ShandaralDruidSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralDruidSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralDruidSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30863, 1, "ShandaralDruidSpirit_OnCombat")
RegisterUnitEvent(30863, 2, "ShandaralDruidSpirit_OnLeaveCombat")
RegisterUnitEvent(30863, 3, "ShandaralDruidSpirit_OnKilledTarget")
RegisterUnitEvent(30863, 4, "ShandaralDruidSpirit_OnDied")


--[[ Crystalsong Forest -- Shandaral Hunter Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ShandaralHunterSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralHunterSpirit_AimedShot", 7000, 0)
Unit:RegisterEvent("ShandaralHunterSpirit_ImprovedWingClip", 10000, 0)
Unit:RegisterEvent("ShandaralHunterSpirit_Shoot", 6000, 0)
end

function ShandaralHunterSpirit_AimedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(54615, pUnit:GetMainTank()) 
end

function ShandaralHunterSpirit_ImprovedWingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47168, pUnit:GetMainTank()) 
end

function ShandaralHunterSpirit_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function ShandaralHunterSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralHunterSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralHunterSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30864, 1, "ShandaralHunterSpirit_OnCombat")
RegisterUnitEvent(30864, 2, "ShandaralHunterSpirit_OnLeaveCombat")
RegisterUnitEvent(30864, 3, "ShandaralHunterSpirit_OnKilledTarget")
RegisterUnitEvent(30864, 4, "ShandaralHunterSpirit_OnDied")


--[[ Crystalsong Forest -- Shandaral Spirit Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ShandaralSpiritWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralSpiritWolf_TendonRip", 8000, 0)
end

function ShandaralSpiritWolf_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function ShandaralSpiritWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralSpiritWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralSpiritWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31123, 1, "ShandaralSpiritWolf_OnCombat")
RegisterUnitEvent(31123, 2, "ShandaralSpiritWolf_OnLeaveCombat")
RegisterUnitEvent(31123, 3, "ShandaralSpiritWolf_OnKilledTarget")
RegisterUnitEvent(31123, 4, "ShandaralSpiritWolf_OnDied")


--[[ Crystalsong Forest -- Silver Covenant Horseman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SilverCovenantHorseman_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverCovenantHorseman_MultiShot", 8000, 0)
Unit:RegisterEvent("SilverCovenantHorseman_Shoot", 6000, 0)
end

function SilverCovenantHorseman_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SilverCovenantHorseman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverCovenantHorseman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverCovenantHorseman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverCovenantHorseman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30263, 1, "SilverCovenantHorseman_OnCombat")
RegisterUnitEvent(30263, 2, "SilverCovenantHorseman_OnLeaveCombat")
RegisterUnitEvent(30263, 3, "SilverCovenantHorseman_OnKilledTarget")
RegisterUnitEvent(30263, 4, "SilverCovenantHorseman_OnDied")


--[[ Crystalsong Forest -- Silver Covenant Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]



function SilverCovenantScout_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverCovenantScout_MultiShot", 8000, 0)
Unit:RegisterEvent("SilverCovenantScout_Shoot", 6000, 0)
end

function SilverCovenantScout_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SilverCovenantScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverCovenantScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverCovenantScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverCovenantScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30238, 1, "SilverCovenantScout_OnCombat")
RegisterUnitEvent(30238, 2, "SilverCovenantScout_OnLeaveCombat")
RegisterUnitEvent(30238, 3, "SilverCovenantScout_OnKilledTarget")
RegisterUnitEvent(30238, 4, "SilverCovenantScout_OnDied")

--[[ Crystalsong Forest -- Skymaster Baeric.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkymasterBaeric_OnCombat(Unit, Event)
Unit:RegisterEvent("SkymasterBaeric_FieryIntellect", 2000, 1)
end

function SkymasterBaeric_FieryIntellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function SkymasterBaeric_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkymasterBaeric_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkymasterBaeric_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30269, 1, "SkymasterBaeric_OnCombat")
RegisterUnitEvent(30269, 2, "SkymasterBaeric_OnLeaveCombat")
RegisterUnitEvent(30269, 3, "SkymasterBaeric_OnKilledTarget")
RegisterUnitEvent(30269, 4, "SkymasterBaeric_OnDied")


--[[ Crystalsong Forest -- Sinewy Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkymasterBaeric_OnCombat(Unit, Event)
Unit:RegisterEvent("SkymasterBaeric_FieryIntellect", 2000, 1)
end

function SkymasterBaeric_FieryIntellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function SkymasterBaeric_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkymasterBaeric_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkymasterBaeric_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30269, 1, "SkymasterBaeric_OnCombat")
RegisterUnitEvent(30269, 2, "SkymasterBaeric_OnLeaveCombat")
RegisterUnitEvent(30269, 3, "SkymasterBaeric_OnKilledTarget")
RegisterUnitEvent(30269, 4, "SkymasterBaeric_OnDied")


--[[ Crystalsong Forest -- Sunreaver Hawkrider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SunreaverHawkrider_OnCombat(Unit, Event)
Unit:RegisterEvent("SunreaverHawkrider_Shoot", 6000, 0)
end

function SunreaverHawkrider_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunreaverHawkrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunreaverHawkrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunreaverHawkrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30265, 1, "SunreaverHawkrider_OnCombat")
RegisterUnitEvent(30265, 2, "SunreaverHawkrider_OnLeaveCombat")
RegisterUnitEvent(30265, 3, "SunreaverHawkrider_OnKilledTarget")
RegisterUnitEvent(30265, 4, "SunreaverHawkrider_OnDied")


--[[ Crystalsong Forest -- Sunreaver Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SunreaverScout_OnCombat(Unit, Event)
Unit:RegisterEvent("SunreaverScout_MultiShot", 8000, 0)
Unit:RegisterEvent("SunreaverScout_Shoot", 6000, 0)
end

function SunreaverScout_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SunreaverScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunreaverScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunreaverScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunreaverScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30233, 1, "SunreaverScout_OnCombat")
RegisterUnitEvent(30233, 2, "SunreaverScout_OnLeaveCombat")
RegisterUnitEvent(30233, 3, "SunreaverScout_OnKilledTarget")
RegisterUnitEvent(30233, 4, "SunreaverScout_OnDied")


--[[ Crystalsong Forest -- Unbound Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundAncient_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("UnboundAncient_Trample", 6000, 0)
end

function UnboundAncient_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33844, pUnit:GetMainTank()) 
end

function UnboundAncient_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function UnboundAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30861, 1, "UnboundAncient_OnCombat")
RegisterUnitEvent(30861, 2, "UnboundAncient_OnLeaveCombat")
RegisterUnitEvent(30861, 3, "UnboundAncient_OnKilledTarget")
RegisterUnitEvent(30861, 4, "UnboundAncient_OnDied")


--[[ Crystalsong Forest -- Unbound Corrupter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundCorrupter_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundCorrupter_ArcaneBolt", 6000, 0)
Unit:RegisterEvent("UnboundCorrupter_LeyCurse", 5000, 1)
Unit:RegisterEvent("UnboundCorrupter_TransferredPower", 4000, 1)
end

function UnboundCorrupter_ArcaneBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38204, pUnit:GetMainTank()) 
end

function UnboundCorrupter_LeyCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58667, pUnit:GetMainTank()) 
end

function UnboundCorrupter_TransferredPower(pUnit, Event) 
pUnit:CastSpell(58270) 
end

function UnboundCorrupter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundCorrupter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundCorrupter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30868, 1, "UnboundCorrupter_OnCombat")
RegisterUnitEvent(30868, 2, "UnboundCorrupter_OnLeaveCombat")
RegisterUnitEvent(30868, 3, "UnboundCorrupter_OnKilledTarget")
RegisterUnitEvent(30868, 4, "UnboundCorrupter_OnDied")


--[[ Crystalsong Forest -- Unbound Dryad.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundDryad_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundDryad_ThrowSpear", 6000, 0)
end

function UnboundDryad_ThrowSpear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(55217, pUnit:GetMainTank()) 
end

function UnboundDryad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundDryad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundDryad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30860, 1, "UnboundDryad_OnCombat")
RegisterUnitEvent(30860, 2, "UnboundDryad_OnLeaveCombat")
RegisterUnitEvent(30860, 3, "UnboundDryad_OnKilledTarget")
RegisterUnitEvent(30860, 4, "UnboundDryad_OnDied")


--[[ Crystalsong Forest -- Unbound Ent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundEnt_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundEnt_CorruptedRejuvenation", 8000, 0)
Unit:RegisterEvent("UnboundEnt_Thorns", 2000, 1)
end

function UnboundEnt_CorruptedRejuvenation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58624, pUnit:GetMainTank()) 
end

function UnboundEnt_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function UnboundEnt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundEnt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundEnt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30862, 1, "UnboundEnt_OnCombat")
RegisterUnitEvent(30862, 2, "UnboundEnt_OnLeaveCombat")
RegisterUnitEvent(30862, 3, "UnboundEnt_OnKilledTarget")
RegisterUnitEvent(30862, 4, "UnboundEnt_OnDied")


--[[ Crystalsong Forest -- Unbound Trickster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundTrickster_FireBlast", 6000, 0)
Unit:RegisterEvent("UnboundTrickster_Ignite", 8000, 0)
end

function UnboundTrickster_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13341, pUnit:GetMainTank()) 
end

function UnboundTrickster_Ignite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58438, pUnit:GetMainTank()) 
end

function UnboundTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30856, 1, "UnboundTrickster_OnCombat")
RegisterUnitEvent(30856, 2, "UnboundTrickster_OnLeaveCombat")
RegisterUnitEvent(30856, 3, "UnboundTrickster_OnKilledTarget")
RegisterUnitEvent(30856, 4, "UnboundTrickster_OnDied")