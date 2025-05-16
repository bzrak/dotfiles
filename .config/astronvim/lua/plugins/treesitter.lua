--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "cpp",
      "lua",
      "markdown",
      "markdown_inline",
      "printf",
      "vim",
      "vimdoc",

      
      -- add more arguments for adding more treesitter parsers
    },
  },
}
