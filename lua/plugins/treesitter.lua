return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,          -- this plugin does not support lazy-loading
    build = ":TSUpdate",   -- keep parsers in sync when the plugin updates
    config = function()
      -- install the C parser (does nothing if already installed)
      require("nvim-treesitter").install({ "c" })

      -- turn on treesitter highlighting for C files
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "c", "cpp" },
        callback = function() vim.treesitter.start() end,
      })
    end,
  },
}
