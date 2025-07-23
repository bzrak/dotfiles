return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        sh = { "shfmt" },
        bash = { "shfmt" },
        zsh = { "shfmt" },
      },
      formatters = {
        shfmt = {
          args = { "-i", "4", "-ci" }, -- sets indentation to 4 spaces
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "shfmt",
      },
    },
  },
}
