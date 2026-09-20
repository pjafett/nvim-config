return {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
        open_mapping = [[<c-\>]],  -- Ctrl-\ toggles the terminal
        direction = 'horizontal',  -- 'horizontal' | 'vertical' | 'float' | 'tab'
        size = 15,                 -- rows when horizontal
        start_in_insert = true,
        persist_size = true,
        shade_terminals = true,    -- slightly darken the terminal window
        float_opts = {
            border = 'curved',
        },
    },
    config = function(_, opts)
        require('toggleterm').setup(opts)

        -- Escape and window navigation from inside the terminal
        vim.api.nvim_create_autocmd('TermOpen', {
            pattern = 'term://*toggleterm#*',
            callback = function()
                local o = { buffer = 0 }
                vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], o)
                vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], o)
                vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], o)
                vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], o)
                vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], o)
            end,
        })
    end,
}
