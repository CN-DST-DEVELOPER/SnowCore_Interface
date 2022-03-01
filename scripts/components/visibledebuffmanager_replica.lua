--[[ 

Copyright 2022 Fengying <zxcvbnm3057@outlook.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]] --

local VisibledebuffManager =
	Class(
	function(self, inst)
		self.inst = inst
		self._debuffs = {}
	end
)

function VisibledebuffManager:AddDebuff(name, buff_ent, percent, activated)
	if not self._debuffs[name] then
		self._debuffs[name] = {
			["percent"] = net_float(buff_ent.GUID, "visibledebuffmanager.debuffs." .. name .. ".percent"),
			["activated"] = net_bool(buff_ent.GUID, "visibledebuffmanager.debuffs." .. name .. ".activated")
		}
	end
	self._debuffs[name]["percent"]:set(percent)
	self._debuffs[name]["activated"]:set(activated)
end

function VisibledebuffManager:RemoveDebuff(name)
	self._debuffs[name] = nil
end

function VisibledebuffManager:GetVal(name)
	if self._debuffs[name] then
		return self._debuffs[name]["percent"]:value(), self._debuffs[name]["activated"]:value()
	end
end

function VisibledebuffManager:GetList()
	local list = {}
	for name, v in pairs(self._debuffs) do
		local p, a = self:GetVal(name)
		list[name] = {
			["percent"] = p,
			["activated"] = a
		}
	end

	return list
end

return VisibledebuffManager
