# hotkeymanager(componests)

用于按键监听，热键捕捉

**请注意，这是一个客户端独有组件！**



## 常用方法

#### hotkeymanager:AddKeyHandler(key, handler)

添加按键监听

```
handler = {
	Down = {
		RPC = {
			Namespace = "",
			Action = "",
            Data = {}
		},
		clientfn = function(inst, pos, entity)
			...
		end
	},
	While = {
		...
	},
	Up = {
		...
	},
	TickTime = 1
}
```

Down: 按下时回调

While: 按住时回调，触发频率为TickTime

Up: 抬起时回调

RPC: 远程方法，Data为RPC调用时的附加参数，类型为数组，仅支持基础数据类型

clientfn: 本地方法

#### hotkeymanager:RemoveKeyHandler(key)

移除按键回调