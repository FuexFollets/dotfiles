--[[
 ________  ________  ________  _______   ___  ___  ___  _____ ______
|\   ____\|\   __  \|\   ___ \|\  ___ \ |\  \|\  \|\  \|\   _ \  _   \
\ \  \___|\ \  \|\  \ \  \_|\ \ \   __/|\ \  \ \  \\\  \ \  \\\__\ \  \
 \ \  \    \ \  \\\  \ \  \ \\ \ \  \_|/_\ \  \ \  \\\  \ \  \\|__| \  \
  \ \  \____\ \  \\\  \ \  \_\\ \ \  \_|\ \ \  \ \  \\\  \ \  \    \ \  \
   \ \_______\ \_______\ \_______\ \_______\ \__\ \_______\ \__\    \ \__\
    \|_______|\|_______|\|_______|\|_______|\|__|\|_______|\|__|     \|__|
]]
--

--[[
local accept = function() return vim.fn['codeium#Accept']() end
local cycle1 = function() return vim.fn['codeium#CycleCompletions'](1) end
local cycle2 = function() return vim.fn['codeium#CycleCompletions'](-1) end
local clear = function() return vim.fn['codeium#Clear']() end
local accept_word = function() return vim.fn['codeium#AcceptNextWord']() end
local accept_line = vim.fn['codeium#AcceptNextLine']()
]]
--

--[[
local accept = vim.fn['codeium#Accept']
local cycle1 = vim.fn['codeium#CycleCompletions'](1)
local cycle2 = vim.fn['codeium#CycleCompletions'](-1)
local clear = vim.fn['codeium#Clear']
local accept_word = vim.fn['codeium#AcceptNextWord']
local accept_line = vim.fn['codeium#AcceptNextLine']
]]
--

--[[
local accept = function() vim.cmd('call codeium#Accept()') end
local cycle1 = function() vim.cmd('call codeium#CycleCompletions(1)') end
local cycle2 = function() vim.cmd('call codeium#CycleCompletions(-1)') end
local clear = function() vim.cmd('call codeium#Clear()') end
local accept_word = function() vim.cmd('call codeium#AcceptNextWord()') end
local accept_line = function() vim.cmd('call codeium#AcceptNextLine()') end
]]

local accept = vim.fn['codeium#Accept']
local cycle1 = function() vim.fn['codeium#CycleCompletions'](1) end
local cycle2 = function() vim.fn['codeium#CycleCompletions'](-1) end
local clear = vim.fn['codeium#Clear']
local accept_word = vim.fn['codeium#AcceptNextWord']
local accept_line = vim.fn['codeium#AcceptNextLine']

local opts = { expr = true }

vim.keymap.set('i', '<M-j>', accept, opts)
vim.keymap.set('i', '<M-h>', cycle1, opts)
vim.keymap.set('i', '<M-k>', cycle2, opts)
vim.keymap.set('i', '<M-x>', clear, opts)
vim.keymap.set('i', '<M-w>', accept_word, opts)
vim.keymap.set('i', '<M-l>', accept_line, opts)

-- disable completion by pressing the tab button
