-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Remove LazyVim defaut option of identifying the root directory.
vim.g.root_spec = { "cwd" }
vim.g.lazyvim_prettier_needs_config = false

local opt = vim.opt
-- Options
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- Python
--
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"
