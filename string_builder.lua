-- Simple StringBuilder --
-- Written by @realdotty 10/27/2025 --

local _setmetatable = setmetatable
local table_insert = table.insert
local table_concat = table.concat

---@class StringBuilder
---@field parts table<integer, string>
local StringBuilder = {}
StringBuilder.__index = StringBuilder

--- Create a new StringBuilder instance
---@return StringBuilder
function StringBuilder.new()
	return _setmetatable({
		parts = {}
	}, StringBuilder)
end

--- Add a string to the StringBuilder instance
---@param str string
---@return StringBuilder
function StringBuilder:append(str)
	table_insert(self.parts, str)
	return self
end

--- Add a string to then StringBuilder instance (New line after)
---@param str string
---@return StringBuilder
function StringBuilder:appendLine(str)
	table_insert(self.parts, str)
	table_insert(self.parts, "\n")
	return self
end

--- Reset the StringBuilder instance
---@return StringBuilder
function StringBuilder:clear()
	self.parts = {}
	return self
end

--- Return the contents of the StringBuilder instance
---@return string
function StringBuilder:toString()
	return table_concat(self.parts)
end

--- Return the length of the StringBuilder instance
---@return number
function StringBuilder:len()
	return #table_concat(self.parts)
end

return StringBuilder
