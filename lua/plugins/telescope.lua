return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        local telescope = require('telescope')
        
        telescope.setup({
            defaults = {
                -- Your custom defaults configuration goes here
            },
            extensions = {
                fzf = {}
            }
        })

        -- Load the fzf extension for faster fuzzy finding
        telescope.load_extension('fzf')

        -- Keymaps
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope Find Files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope Live Grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope Buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope Help Tags' })
    end
}
