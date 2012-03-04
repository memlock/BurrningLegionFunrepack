function flecheim(pUnit, Event)
    local confound = pUnit:GetMainTank()
    pUnit:FullCastSpellOnTarget(37847, confound)
end

function flecheem(pUnit, Event)
    local confound = pUnit:GetMainTank()
    pUnit:FullCastSpellOnTarget(45101, confound)
end

function lamedelaube(pUnit, Event)
pUnit:RegisterEvent("flecheim", 5000, 0)
pUnit:RegisterEvent("flecheem", 7000, 0)
end

function lamedelaube_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function lamedelaube_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(24979, 1, "lamedelaube")
RegisterUnitEvent(24979, 2, "lamedelaube_onLeaveCombat")
RegisterUnitEvent(24979, 4, "lamedelaube_onDeath")








function invocdiablo(pUnit, Event)
    pUnit:FullCastSpell(11939)
end

function invocincin(pUnit, Event)
    local confound = pUnit:GetMainTank()
    pUnit:FullCastSpellOnTarget(32707, confound)
end

function invocimo(pUnit, Event)
    local confound = pUnit:GetMainTank()
    pUnit:FullCastSpellOnTarget(11962, confound)
end

function invocdelaube(pUnit, Event)
pUnit:RegisterEvent("invocdiablo", 5000, 2)
pUnit:RegisterEvent("invocincin", 7500, 0)
pUnit:RegisterEvent("invocimo", 9500, 0)
end

function invocdelaube_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function invocdelaube_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(24978, 1, "invocdelaube")
RegisterUnitEvent(24978, 2, "invocdelaube_onLeaveCombat")
RegisterUnitEvent(24978, 4, "invocdelaube_onDeath")






function hotiondevo(pUnit, Event)
    local confound = pUnit:GetMainTank()
    pUnit:FullCastSpellOnTarget(35334, confound)
end

function ponctiondevo(pUnit, Event)
    local confound = pUnit:GetMainTank()
    pUnit:FullCastSpellOnTarget(33483, confound)
end

function Devoreur(pUnit, Event)
pUnit:RegisterEvent("hotiondevo", 9000, 0)
pUnit:RegisterEvent("ponctiondevo", 7000, 0)
end

function Devoreur_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function Devoreur_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(24960, 1, "Devoreur")
RegisterUnitEvent(24960, 2, "Devoreur_onLeaveCombat")
RegisterUnitEvent(24960, 4, "Devoreur_onDeath")








function massacreurflame(pUnit, Event)
    pUnit:FullCastSpell(19630)
end

function massacreurenergi(pUnit, Event)
    pUnit:FullCastSpell(15496)
end

function massacreur(pUnit, Event)
pUnit:RegisterEvent("massacreurflame", 5000, 0)
pUnit:RegisterEvent("massacreurenergi", 7000, 0)
end

function massacreur_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function massacreur_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(25030, 1, "massacreur")
RegisterUnitEvent(25030, 2, "massacreur_onLeaveCombat")
RegisterUnitEvent(25030, 4, "massacreur_onDeath")







function archerrentefet(pUnit, Event)
    local X = pUnit:GetX()
    local Y = pUnit:GetY()
    local Z = pUnit:GetZ()
    local O = pUnit:GetO()
    pUnit:CastSpellAoF(X + 50, Y + 50, Z - 20, 6984)
end

function archerrent(pUnit, Event)
pUnit:RegisterEvent("archerrentefet", 5000, 0)
end

function archerrent_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function archerrent_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(24938, 18, "archerrent")
RegisterUnitEvent(24938, 2, "archerrent_onLeaveCombat")
RegisterUnitEvent(24938, 4, "archerrent_onDeath")



function archerrentefett(pUnit, Event)
    local X = pUnit:GetX()
    local Y = pUnit:GetY()
    local Z = pUnit:GetZ()
    local O = pUnit:GetO()
    pUnit:CastSpellAoF(X - 50, Y - 50, Z - 20, 6984)
end

function archerrentt(pUnit, Event)
pUnit:RegisterEvent("archerrentefett", 5000, 0)
end

function archerrentt_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function archerrentt_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(6666666, 18, "archerrentt")
RegisterUnitEvent(6666666, 2, "archerrentt_onLeaveCombat")
RegisterUnitEvent(6666666, 4, "archerrentt_onDeath")



function queldanasvisuelpsy(pUnit, Event)
    pUnit:FullCastSpell(36393)
end

function queldanasvisuel(pUnit, Event)
pUnit:RegisterEvent("queldanasvisuelpsy", 5000, 0)
end

function queldanasvisuel_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function queldanasvisuel_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(1000000, 18, "queldanasvisuel")
RegisterUnitEvent(1000000, 2, "queldanasvisuel_onLeaveCombat")
RegisterUnitEvent(1000000, 4, "queldanasvisuel_onDeath")



function sirendequelnova(pUnit, Event)
    pUnit:FullCastSpell(27088)
end

function sirendequelgivre(pUnit, Event)
    local confound = pUnit:GetMainTank()
    pUnit:FullCastSpell(12043)
    pUnit:FullCastSpellOnTarget(25304, confound)
end

function sirendequel(pUnit, Event)
pUnit:RegisterEvent("sirendequelnova", 9000, 0)
pUnit:RegisterEvent("sirendequelgivre", 7000, 0)
end

function sirendequel_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function sirendequel_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(25060, 1, "sirendequel")
RegisterUnitEvent(25060, 2, "sirendequel_onLeaveCombat")
RegisterUnitEvent(25060, 4, "sirendequel_onDeath")


function oratriceducouquelss(pUnit, Event)
    local X = pUnit:GetX()
    local Y = pUnit:GetY()
    local Z = pUnit:GetZ()
    local O = pUnit:GetO()
    pUnit:CastSpellAoF(X - 50, Y - 50, Z - 20, 30166)
end

function oratriceducouquel(pUnit, Event)
pUnit:RegisterEvent("oratriceducouquelss", 5000, 0)
end

function oratriceducouquel_onLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function oratriceducouquel_onDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(24999, 18, "oratriceducouquel")
RegisterUnitEvent(24999, 2, "oratriceducouquel_onLeaveCombat")
RegisterUnitEvent(24999, 4, "oratriceducouquel_onDeath")