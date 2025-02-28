return {
  "kdheepak/lazygit.nvim",

  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    -- Configure lazygit.nvim
    vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window
    vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
    vim.g.lazygit_floating_window_border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" } -- customize lazygit popup window border characters
    vim.g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed
  end,

  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    { "<leader>lgc", "<cmd>LazyGitConfig<cr>", desc = "LazyGit Config" },
    { "<leader>lgf", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit Current File" },
    { "<leader>lgb", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "LazyGit File History" },
    { "<leader>lgg", "<cmd>LazyGitFilter<cr>", desc = "LazyGit Branch History" },
  },
}
