# skillmanager(componests)

用于统计处理实体习得的技能

**相关组件/方法：**

- AddModSkill()



## 常用方法

#### skillmanager:IsSkillLearned(name)

判断技能是否已习得

#### skillmanager:Learn(name)

学习技能

#### skillmanager:Forget(name)

忘记技能

#### skillmanager:LaunchSkill(name, pos, target)

发动技能

## 调用

- 学习技能 `SendModRPCToServer(GetModRPC("SnowCore.skillmanager", "learnskill"), skillname)`
- 忘记技能 `SendModRPCToServer(GetModRPC("SnowCore.skillmanager", "forgetskill"), skillname)`

## 回调

- `skilllearned`当学得新技能时触发
- `skillforgot`忘记技能时触发

这两个事件都将同时在主客机发送