---TAKEN FROM rcore framework
---https://githu.com/Isigar/relisoft_core
---https://docs.rcore.cz
local serverCallbacks = {}
local callbacksRequestsHistory = {}

function registerCallback(cbName, callback)
    serverCallbacks[cbName] = callback
end

RegisterNetEvent(TriggerName('callCallback'))
AddEventHandler(TriggerName('callCallback'), function(name, requestId, source, ...)
    if serverCallbacks[name] == nil then
        return
    end
    callbacksRequestsHistory[requestId] = {
        name = name,
        source = source,
    }
    local call = serverCallbacks[name]
    call(source, function(...)
        TriggerClientEvent(TriggerName('callback'), source, requestId, ...)
    end, ...)
end)
