--[[ 

Copyright 2022 Fengying <zxcvbnm3057@outlook.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]] --

local SkillManager =
    Class(
    function(self, inst)
        self.inst = inst
    end
)

function SkillManager:IsSkillLearned(name)
    return self.inst.replica.skillmanager:IsSkillLearned(name)
end

function SkillManager:Learn(name)
    if not self:IsSkillLearned(name) then
        if ModSkillList[name].onlearn then
            ModSkillList[name].onlearn(self.inst)
        end
        self.inst.replica.skillmanager:Learn(name)
    end
end

function SkillManager:Forget(name)
    if name then
        if self:IsSkillLearned(name) then
            if ModSkillList[name].onforget then
                ModSkillList[name].onforget(self.inst)
            end
            self.inst.replica.skillmanager:Forget(name)
        end
    else
        for name, v in pairs(self.learnedskills) do
            if ModSkillList[name].onforget then
                ModSkillList[name].onforget(self.inst)
            end
        end
        self.learnedskills[name] = {}
    end
end

function SkillManager:LaunchSkill(name, pos, target)
    if self:IsSkillLearned(name) then
        if ModSkillList[name].onlaunch then
            ModSkillList[name].onlaunch(self.inst, pos, target)
        end
    end
end

return SkillManager
