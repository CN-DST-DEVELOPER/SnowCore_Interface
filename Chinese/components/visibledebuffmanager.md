# visibledebuffmanager(componests)

实体上用于管理debuff的组件，如果buff有图标，且被附加实体有添加了buff图标栏，将自动显示。buff数据可以自动保存。

添加新debuff的示例代码在`scripts\prefabs\visibledebuffs_example.lua`中

## 常用方法

#### visibledebuffmanager:AddDebuff(name, percent)

为当前实体附加名为name，强度为percent的debuff

#### visibledebuffmanager:RemoveDebuff(name)

移除实体上名为name的debuff

#### visibledebuffmanager:CleanDebuffs(name)

清除实体上全部debuff