# cdmanager(componests)

主要用于与[skillmanager](./skillmanager.md)配合使用，调用`skillmanager:Learn(skillname)`习得技能时，自动在客机添加技能图标，冷却数据将自动存档。



**相关组件/方法：**

- skillmanager
- AddVisibleSkillUI()
- AddModSkill()



## 常用方法

#### cdmanager:IsReady(name)

返回技能是否冷却完成



#### cdmanager:StartCooldown(name, data)

使技能进入cd，data格式：

|       属性名       |                     含义                     |
| :----------------: | :------------------------------------------: |
| cooldowntime_left  |          剩余冷却时间，默认为技能cd          |
| cooldowntime_total |                  总冷却时间                  |
|      quantity      |        技能已充能层数，默认为最大层数        |
|    quantity_max    |                 技能最大层数                 |
| rechargetime_left  | 获得下一层充能的剩余时间，默认为充能最大时间 |
| rechargetime_total |                  充能总时间                  |
|       paused       |                     暂停                     |

#### cdmanager:StopCooldown(name)

停止技能cd计算，移除技能UI

#### cdmanager:GetCDLeft(name)

获取技能剩余冷却时间

#### cdmanager:GetQuantity(name)

获取技能已充能层数

#### cdmanager:CostQuantity(name, num)

消耗技能层数（这不会判断是否拥有这些层）

#### cdmanager:Pause(name)

暂停冷却

#### cdmanager:Resume(name)

继续冷却