local path = (...):gsub(".init$", "") .. "."

require(path .. "cdef")

local M = require(path .. "master")
local ffi = require("ffi")
M.C = ffi.load("cimgui")

require(path .. "enums")
require(path .. "wrap")
require(path .. "love")
require(path .. "shortcuts")

-- remove access to M._common
M._common = nil

return M
