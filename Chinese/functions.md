# Functions

### AOEAttack(pos, attackfn, range, noattacktags)

对点`pos`周围`range`范围内可攻击的单位遍历执行`attackfn`，排除带有`noattacktags`的实体

### MakeUIDragable(name)

使窗口可拖拽，拖拽位置将自动保存。可传入窗体名或实体。

### AddVisibleDebuffUI()

为玩家HUD添加debuff栏

### AddVisibleSkillUI()

为玩家HUD添加技能栏

### SetEntityInvincible(prefab, isInvincible, key)

使实体无敌，key为不同来源，多个来源不会冲突

### WatchSharedVariable(name, callback)

监听名为name的多世界共享变量，当变量值改变时触发callback回调，callback入参(value_new, value_old)

### StopWatchingSharedVariable(name, callback)

停止监听

### GetSharedVariable(name)

获取名为name的多世界共享变量的值

### SetSharedVariable(name, value)

将名为name的多世界共享变量的值为value，仅支持基本数据类型