return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          ["<Left>"] = false,
          ["<right>"] = false,
          ["<up>"] = false,
          ["<down>"] = false,
          ["<Space>"] = {"<NOP>"},       -- Disable space's default behavior
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>m"] = { desc = "Misc" },

          -- [M]isc
          ["<Leader>ml"] = { "<cmd>set wrap!<cr>" ,desc = "Toggle line wrap"},

          -- [T]erminal
          ["<Leader>tt"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },

        v = {
          ["<Space>"] = {"<NOP>"},
        },

        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,

          -- Easier way to enter normal mode when in Terminal
          -- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
          -- or just use <C-\><C-n> to exit terminal mode
          ["<Esc><Esc>"] = { "<C-\\><C-n>",  desc = "Exit terminal mode" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          -- K = {
          --   function()
          --     vim.lsp.buf.hover()
          --   end,
          --   desc = "Hover symbol details",
          -- },
          -- -- condition for only server with declaration capabilities
          -- gD = {
          --   function()
          --     vim.lsp.buf.declaration()
          --   end,
          --   desc = "Declaration of current symbol",
          --   cond = "textDocument/declaration",
          -- },
        },
      },
    },
  },
}
