--[[ 

Copyright 2022 Fengying <zxcvbnm3057@outlook.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]] --

GLOBAL.ModSkillList = {}

GLOBAL.SKILLICON = {}
GLOBAL.SKILLSTRINGS = {}

GLOBAL.AddModSkill = function(name, data)
    ModSkillList[name] = data
end

GLOBAL.BUFFICONS = {}
GLOBAL.BUFFSTRINGS = {}

-- AddModSkill(
--     "example_skill",
--     {
--         onlearn = function(inst)
--         end,
--         onlaunch = function(inst, pos, target)
--         end,
--         onforget = function(inst)
--         end,
--         onlearn_client = function(inst)
--         end,
--         onlaunch_client = function(inst, pos, target)
--         end,
--         onforget_client = function(inst)
--         end,
--         ispassive = false,
--         cd = 10,
--         description = "This is a example skill",
--         image = "",
--         altas = ""
--     }
-- )

--------------------------------------------------------------------------------------------------------
