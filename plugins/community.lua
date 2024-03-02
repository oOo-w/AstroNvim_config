return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },

  {
    "compiler.nvim",
    keys = {
      { "<leader>r", "", desc = "Compiler" },
      { "<leader>ro", "<cmd>CompilerOpen<cr>", desc = "CompilerOpen" },
      { "<leader>rt", "<cmd>CompilerToggleResult<cr>", desc = "CompilerToggleResult" },
    },
  },

  {
    "noice.nvim",
    config = function()
      require("noice").setup {
        presets = {
          command_palette = false, -- position the cmdline and popupmenu together
        },
      }
    end,
  },
}
