# Snow Core Interface <sub>version 0.1.0</sub>

本mod提供了如下组件、方法、窗体空间

## components

|                            组件名                            |        功能        |
| :----------------------------------------------------------: | :----------------: |
|            [cdmanager](./components/cdmanager.md)            |     技能cd计算     |
|        [hotkeymanager](./components/hotkeymanager.md)        |      按键监听      |
|         [skillmanager](./components/skillmanager.md)         |        技能        |
|         [levelmanager](./components/levelmanager.md)         |        等级        |
|        [visibledebuff](./components/visibledebuff.md)        |      buff效果      |
| [visibledebuffmanager](./components/visibledebuffmanager.md) | 实体上buff的管理器 |

## [function](./functions.md)

|       函数名        |             功能             |
| :-----------------: | :--------------------------: |
|      AOEAttack      |           范围攻击           |
|   MakeUIDragable    |         使界面可拖动         |
|     AddModSkill     |           添加技能           |
| AddVisibleDebuffUI  |     为玩家添加buff图标栏     |
| AddVisibleDebuffUI  |     为玩家添加技能图标栏     |
| SetEntityInvincible |           实体无敌           |
| WatchSharedVariable | 添加多层世界共享变量修改回调 |
|  SetSharedVariable  |     设置多层世界共享变量     |
|  GetSharedVariable  |    获取多层世界共享变量值    |

## widget

|         组件名         |          功能          |
| :--------------------: | :--------------------: |
| visibledebuffcontainer |    一个buff图标列表    |
|   visibledebuffslot    | 用于显示buff图标的窗格 |
| visibleskillcontainer  |    一个技能图标列表    |
|    visibleskillslot    | 用于显示技能图标的窗格 |