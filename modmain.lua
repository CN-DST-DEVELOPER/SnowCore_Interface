--[[ 

Copyright 2022 Fengying <zxcvbnm3057@outlook.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]] --

GLOBAL.setmetatable(
    env,
    {
        __index = function(t, k)
            return GLOBAL.rawget(GLOBAL, k)
        end
    }
)

modimport("scripts/CommonApi.lua")

if TheNet:GetIsServer() then
    modimport("scripts/ServerApi.lua")
end

AddReplicableComponent("cdmanager")
AddReplicableComponent("levelmanager")
AddReplicableComponent("skillmanager")
AddReplicableComponent("visibledebuff")
AddReplicableComponent("visibledebuffmanager")

if not TheNet:IsDedicated() then
    modimport("scripts/ClientApi.lua")
end
