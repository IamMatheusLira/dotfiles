vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

local tree = require'nvim-tree'
local tree_api = require'nvim-tree.api'

tree.setup{
  actions = {
    open_file = { resize_window = true }
  },
  filters = { dotfiles = false }
}

vim.keymap.set('n', '<leader>tt', tree_api.tree.toggle)
vim.keymap.set('n', '<leader>tf', tree_api.tree.focus)
vim.keymap.set('n', '<leader>tc', tree_api.tree.collapse_all)
