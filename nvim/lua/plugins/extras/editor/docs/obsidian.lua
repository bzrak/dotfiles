local prefix = "<leader>o"

return {
  { import = "plugins.extras.lang.markdown-extended" },
  {
    -- "epwalsh/obsidian.nvim",
    "obsidian-nvim/obsidian.nvim", -- NOTE: Using a fork from the community
    -- ft = "markdown",
    event = "BufReadPre " .. vim.fn.expand("~") .. "/Documents/Vaults/berzrk/**.md",
    keys = {
      { prefix .. "o", "<cmd>Obsidian open<CR>", desc = "Open on App" },
      { prefix .. "g", "<cmd>Obsidian search<CR>", desc = "Grep" },
      { prefix .. "n", "<cmd>Obsidian new<CR>", desc = "New Note" },
      { prefix .. "N", "<cmd>Obsidian new_from_template<CR>", desc = "New Note (Template)" },
      { prefix .. "<space>", "<cmd>Obsidian quick_switch<CR>", desc = "Find Files" },
      { prefix .. "b", "<cmd>Obsidian backlinks<CR>", desc = "Backlinks" },
      { prefix .. "t", "<cmd>Obsidian tags<CR>", desc = "Tags" },
      { prefix .. "T", "<cmd>Obsidian template<CR>", desc = "Template" },
      { prefix .. "L", "<cmd>Obsidian link<CR>", mode = "v", desc = "Link" },
      { prefix .. "l", "<cmd>Obsidian links<CR>", desc = "Links" },
      { prefix .. "l", "<cmd>Obsidian link_new<CR>", mode = "v", desc = "New Link" },
      { prefix .. "e", "<cmd>Obsidian extract_note<CR>", mode = "v", desc = "Extract Note" },
      { prefix .. "w", "<cmd>Obsidian workspace<CR>", desc = "Workspace" },
      { prefix .. "r", "<cmd>Obsidian rename<CR>", desc = "Rename" },
      { prefix .. "i", "<cmd>Obsidian paste_img<CR>", desc = "Paste Image" },
      { prefix .. "d", "<cmd>Obsidian dailies<CR>", desc = "Daily Notes" },
      { prefix .. "O", "<cmd>edit ~/Documents/Vaults/berzrk/Homepage.md<CR>", desc = "Open vault" },
    },
    opts = {
      workspaces = {
        {
          name = "berzrk",
          path = vim.fn.expand("~") .. "/Documents/Vaults/berzrk",
        },
      },

      notes_subdir = "01 - PROJECTS",
      -- Where to put new notes, other option is current_dir
      new_notes_location = "notes_subdir",

      daily_notes = {
        folder = "06 - DAILY",
        date_format = "%d-%m-%Y",
        template = "daily.md",
      },

      completion = {
        nvim_cmp = false,
        blink = true,
      },

      create_new = false,

      picker = {
        name = "snacks.pick",
        note_mappings = {
          -- Create a new note from your query.
          new = "<C-x>",
          -- Insert a link to the selected note.
          insert_link = "<C-l>",
        },
        tag_mappings = {
          -- Add tag(s) to current note.
          tag_note = "<C-x>",
          -- Insert a tag at the current location.
          insert_tag = "<C-l>",
        },
      },

      callbacks = {
        enter_note = function(_, note)
          vim.keymap.set("n", "gf", "<cmd>ObsidianFollowLink<cr>", {
            buffer = note.bufnr,
            expr = note.expr,
            noremap = note.noremap,
            desc = "File Passthrough",
          })
        end,
      },

      templates = {
        folder = "99 - META/Templates",
        date_format = "%d-%m-%Y",
        time_format = "%H:%M",
        default = "base.md",
        substitutions = {
          today = function()
            os.setlocale("en_US.UTF-8")
            return os.date("%A, %B %dth, %Y", os.time())
          end,
          weekday = function()
            os.setlocale("en_US.UTF-8")
            return os.date("%A", os.time())
          end,
        },
      },

      note_id_func = function(title)
        if title ~= nil and title ~= "" then
          return title
        else
          -- Fallback if no title is provided
          return os.date("%Y-%m-%d-%H%M%S") -- e.g., "2025-07-20-113023"
        end
      end,

      follow_url_func = function(url)
        vim.fn.jobstart({ "xdg-open", url })
      end,

      attachments = {
        img_folder = "99 - META/Attachments",
      },

      ui = { enable = false },

      statusline = {
        enabled = true,
        format = "{{backlinks}} backlinks | {{words}} words",
      },
    },
  },
  {
    "folke/snacks.nvim",
    keys = {
      {
        prefix .. "k",
        function()
          Snacks.picker.grep({
            search = "^\\s*- \\[ \\]",
            regex = true,
            dirs = { vim.fn.getcwd() },
            finder = "grep",
            format = "file",
            show_empty = true,
            supports_live = false,
            live = false,
          })
        end,
        desc = "Tasks (Unfinished)",
      },
      {
        prefix .. "K",
        function()
          Snacks.picker.grep({
            search = "^\\s*- \\[x\\]:",
            regex = true,
            dirs = { vim.fn.getcwd() },
            finder = "grep",
            format = "file",
            show_empty = true,
            supports_live = false,
            live = false,
          })
        end,
        desc = "Tasks (Finished)",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { prefix, group = "obsidian", icon = " ", mode = { "n", "v" } },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 1, "g:obsidian")
    end,
  },
}
