-- [[ Setting options ]]
-- See `:help vim.opt`
--  For more options, you can see `:help option-list`


-- [[ Line options ]]
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.wrap = false            -- Display lines as one long line (default: true)
vim.opt.cursorline = true       -- Show which line your cursor is on
vim.opt.scrolloff = 4           -- Minimal number of screen lines to keep above and below the cursor (default: 0)
vim.opt.sidescrolloff = 8       -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)

-- [[ Identation options ]]
vim.opt.tabstop = 4             -- Number of spaces a Tab character counts for
vim.opt.softtabstop = 4         -- How many spaces a Tab counts for when in editing mode, e.g. when typing and clicking Tab
vim.opt.shiftwidth = 4          -- Size of an indent when using >>/<<, or indenting new lines
vim.opt.expandtab = true        -- Use spaces instead of Tab (\t)
vim.opt.smartindent = true      -- Smart indentation
vim.opt.breakindent = true      -- Enable break indent

-- [[ Case-insensitive searching ]]
-- UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- [[ Clipboard ]]
-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- [[ Split options ]]
-- Configure how new splits should be opened
vim.opt.splitright = true       -- Split vertical windows to the right
vim.opt.splitbelow = true       -- Split horizontal windows below

-- [[ Tab page options ]]
vim.opt.showtabline = 1 -- Always show tabs (default: 1)

-- [[ Misc options ]]
vim.g.have_nerd_font = true     -- Set to true if you have a Nerd Font installed and selected in the terminal
vim.opt.mouse = 'a'             -- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.showmode = false        -- Don't show the mode, since it's already in the status line
vim.opt.undofile = true         -- Save undo history
vim.opt.signcolumn = 'yes'      -- Keep signcolumn on by default
vim.opt.updatetime = 250        -- Decrease update time
vim.opt.timeoutlen = 300        -- Decrease mapped sequence wait time
vim.opt.termguicolors = true    -- Set termguicolors to enable highlight groups (default: false)
vim.opt.whichwrap = 'bs<>[]hl'  -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
vim.opt.numberwidth = 4         -- Set number column width to 2 {default 4} (default: 4)
vim.opt.inccommand = 'split'    -- Preview substitutions live, as you type!
vim.opt.confirm = true          -- Ask for confirmation when exiting unsaved buffer

vim.opt.list = true             -- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
