return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        vim.keymap.set('n', '<leader>tt', "<cmd>ToggleTerm direction=horizontal<CR>", { desc = '[T]erminal [T]oggle' }),
        vim.keymap.set('n', '<leader>tf', "<cmd>ToggleTerm direction=float<CR>", { desc = '[T]erminal [F]loat' }),
        vim.keymap.set('n', '<leader>tp', "<cmd>TermExec cmd=\"python\"<CR>", { desc = '[T]erminal [P]ython' }),
    }
}

