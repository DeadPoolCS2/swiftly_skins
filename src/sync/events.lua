events:on("OnPlayerSpawn", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end
end)

events:on("OnRoundEnd", function()
    SyncPlayersWithDB()
end)

events:on("OnClientFullConnected", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end
    CheckPlayerConnection(player)
    RegisterLastConnection(player)
end)