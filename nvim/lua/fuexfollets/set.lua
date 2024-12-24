vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", vim.cmd.w)                     -- Write to current file
vim.keymap.set("n", "<leader>W", vim.cmd.wall)                  -- Write to all
vim.keymap.set("n", "<leader>q", vim.cmd.q)                     -- Quit
vim.keymap.set("n", "<leader>Q", function() vim.cmd("q!") end)  -- Quit without saving
vim.keymap.set("n", "<leader>e", vim.cmd.qall)                  -- Quit all 'E'
vim.keymap.set("n", "<leader>E", function() vim.cmd("qa!") end) -- Quit all without saving
-- Write and quit to all 'A"
vim.keymap.set("n", "<leader>A", vim.cmd.wqa)
vim.keymap.set("n", "<leader>F", function() vim.cmd("Ex") end)

-- Enter netrw

-- Split based on current window size
vim.keymap.set("n", "<leader>s", function()
    local width = vim.api.nvim_win_get_width(0)
    local height = vim.api.nvim_win_get_height(0)
    local char_ratio = 135 / 55 -- window width / height

    if width / height > char_ratio then
        vim.cmd.vsplit()
    else
        vim.cmd.split()
    end
end) -- Split

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("v", "j", "gj")
vim.keymap.set("v", "k", "gk")

