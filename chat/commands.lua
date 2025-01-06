--[[ COMMANDS ]]--

--Wolf Community
--https://discord.gg/UwbseV3exQ

RegisterCommand('clear', function(source, args, rawCommand)
    TriggerClientEvent('chat:client:ClearChat', source)
end, false)

RegisterCommand('ooc', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(5)
    if player ~= false then
        local user = GetPlayerName(src)
            TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message"><b>OOC {0}:</b> {1}</div>',
            args = { user, msg }
        })
    end
end, false)

--Wolf Community
--https://discord.gg/UwbseV3exQ