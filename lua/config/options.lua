-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Normal/visual-команды работают и на кириллической раскладке (Kyrgyz/Russian):
-- о/л = j/k, ш = i, <leader>аа = <leader>ff. Insert-режим не затрагивается.
local function escape(str)
  return vim.fn.escape(str, [[;,."|\]])
end
local en = [[qwertyuiop[]asdfghjkl;'zxcvbnm,.]]
local ru = [[йцукенгшщзхъфывапролджэячсмитьбю]]
local en_shift = [[QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]
vim.opt.langmap = escape(ru_shift) .. ";" .. escape(en_shift) .. "," .. escape(ru) .. ";" .. escape(en)
