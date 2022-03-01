# levelmanager(componests)

用于计算等级，自动保存当前等级与经验数据



## 常用方法

#### levelmanager:SetMaxLevel(level)

设置最大等级

#### levelmanager:SetLevelExpFn(level)

设置计算等级最大经验的函数，回调参数为(inst,level)

#### levelmanager:ExpDoDelta(delta)

获取经验

## 回调

服务端回调：等级被设置为0是发送`resetlevel`事件，否则发送`levelup`事件

客户端回调：对应服务器端数据改变，有以下事件

- `onexpdirty`
- `onmaxexpdirty`
- `onleveldirty`
- `onmaxleveldirty`
- `onlevelupdirty`