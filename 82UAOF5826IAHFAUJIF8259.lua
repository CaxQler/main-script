local placeId = tostring(game.PlaceId)

local gameScripts = {
    ["124216119978534"]      = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/CaxQler/scripts-main/refs/heads/main/ride-a-pets.lua"))()',
}

local scriptToRun = gameScripts[placeId]

if scriptToRun then
    local success, err = pcall(function()
        loadstring(scriptToRun)()
    end)
    if not success then
        warn("Error executing script for game " .. placeId .. ": " .. err)
    end
else
    warn("Unsupported game (ID: " .. placeId .. "). No script executed.")
end
