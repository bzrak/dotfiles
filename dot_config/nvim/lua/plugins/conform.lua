return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["c"] = { "clang-format" },
        ["html"] = { "prettier" },
        ["css"] = { "prettier" },
        ["javascript"] = { "prettier" },
        ["javascriptreact"] = { "prettier" },
      },
      formatters = {
        ["clang-format"] = {
          args = { "--style={BasedOnStyle: llvm, IndentWidth: 4}" },
        },
      },
    },
  },
}
