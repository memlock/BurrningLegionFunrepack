function Teleport_onUse (pUnit, Event, pMisc)
pMisc:Teleport (530, 13002.789063, -6908.436035, 9.561390)
end
RegisterGameObjectEvent (500403, 2, 'Teleport_onUse')