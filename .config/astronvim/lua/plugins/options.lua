return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- Configure vim.opt
        number = true,           -- Show line numbers
        relativenumber = true,   -- Relative line numbers
        wrap = false,            -- Display lines as one long line (default: true)
        cursorline = true,       -- Show which line your cursor is on
        scrolloff = 4,           -- Minimal number of screen lines to keep above and below the cursor (default: 0)
        sidescrolloff = 8,       -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)

        tabstop = 4,             -- Number of spaces a Tab character counts for
        softtabstop = 4,         -- How many spaces a Tab counts for when in editing mode, e.g. when typing and clicking Tab
        shiftwidth = 4,          -- Size of an indent when using >>/<<, or indenting new lines
        expandtab = true,        -- Use spaces instead of Tab (\t)
        smartindent = true,      -- Smart indentation
        breakindent = true,      -- Enable break indent

        ignorecase = true,
        smartcase = true,

        clipboard = 'unnamedplus',

        mouse = 'a',             -- Enable mouse mode, can be useful for resizing splits for example!
        showmode = false,        -- Don't show the mode, since it's already in the status line
        undofile = true,         -- Save undo history
        signcolumn = 'yes',      -- Keep signcolumn on by default
        updatetime = 250,        -- Decrease update time
        timeoutlen = 300,        -- Decrease mapped sequence wait time
        termguicolors = true,    -- Set termguicolors to enable highlight groups (default: false)
        whichwrap = 'bs<>[]hl',  -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
        numberwidth = 4,         -- Set number column width to 2 {default 4} (default: 4)
        inccommand = 'split',    -- Preview substitutions live, as you type!

        list = true,             -- Sets how neovim will display certain whitespace characters in the editor.
        listchars = { tab = '» ', trail = '·', nbsp = '␣' },
      },
      g = { -- Configure vim.g
        have_nerd_font = true,     -- Set to true if you have a Nerd Font installed and selected in the terminal
      },
    },
  },
}
