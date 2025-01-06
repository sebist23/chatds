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

RegisterCommand('me', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(4)
    if player ~= false then
        local user = GetPlayerName(src)
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message"><b>{0} {1}</b></div>',
            args = { user, msg }
        })
    end
end, false)

RegisterCommand('do', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(4)
    if player ~= false then
        local user = GetPlayerName(src)
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message"><b>{0} {1}</b></div>',
            args = { user, msg }
        })
    end
end, false)

RegisterCommand('ayuda', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(7)
    if player ~= false then
        local user = GetPlayerName(src)
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message"><b>Ayuda {0}:</b> {1}</div>',
            args = { user, msg }
        })
    end
end, false)

RegisterCommand('anon', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(6)
    if player ~= false then
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message"><b>Anon:</b> {0}</div>',
            args = { msg }
        })
    end
end, false)

