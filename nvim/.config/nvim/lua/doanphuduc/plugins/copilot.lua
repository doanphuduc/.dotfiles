require("CopilotChat").setup({
    -- Disable suggestions and completions entirely
    suggestion = { enabled = false },
    -- You can configure other options here like 'debug', 'show_help', etc.
    debug = false,
    show_help = true,
    window = {
        layout = 'vertical',       -- 'vertical', 'horizontal', 'float'
        width = 0.4,              -- 50% of screen width
    },
})

vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', { expr = true, silent = true, replace_keycodes = false })




