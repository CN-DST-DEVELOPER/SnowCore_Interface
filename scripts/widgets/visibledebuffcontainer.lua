--[[ 

Copyright 2022 Fengying <zxcvbnm3057@outlook.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]] --

local Widget = require "widgets/widget"
local VisibleDebuffSlot = require "widgets/visibledebuffslot"

local SLOTDIST = 60

local VisibleDebuffContainer =
	Class(
	Widget,
	function(self, owner)
		Widget._ctor(self, "Visibledebuffcontainer")
		self.owner = owner
		self.buffslots = {}

		self:SetHAnchor(1)
		self:SetVAnchor(2)
	end
)

function VisibleDebuffContainer:AddBuff(name, ent, percent, activated, ispositive)
	if not self.buffslots[name] then
		self.buffslots[name] = self:AddChild(VisibleDebuffSlot(self.owner, name, ent, percent, activated))
		self.buffslots[name].OnBuffEntityRemove = function()
			self:RemoveBuff(name)
		end
		self.buffslots[name].ispositive = ispositive

		self:Sort()
		self.owner:ListenForEvent("onremove", self.buffslots[name].OnBuffEntityRemove, ent)
	end
	self.buffslots[name]:SetBuff(percent, activated)
end

function VisibleDebuffContainer:RemoveBuff(name)
	local ent = self.buffslots[name]:GetBuffEntity()
	self.owner:RemoveEventCallback("onremove", self.buffslots[name].OnBuffEntityRemove, ent)

	self.buffslots[name]:Kill()
	self.buffslots[name] = nil
	self:Sort()
end

function VisibleDebuffContainer:Sort()
	local index = 1
	for name, buffslot in pairs(self.buffslots) do
		local x, y, z = buffslot.ispositive and 0 or SLOTDIST, SLOTDIST * (index - 1), 0
		buffslot:SetPosition(x, y, z)
		index = index + 1
	end
end

return VisibleDebuffContainer
