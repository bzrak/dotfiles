return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["c"] = { "clang-format" },
      },
      formatters = {
        ["clang-format"] = {
          args = { "--style={BasedOnStyle: llvm, IndentWidth: 4}" },
        },
      },
    },
  },
}
