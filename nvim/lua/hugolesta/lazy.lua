local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then 
  vim.fn.system({
   "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.vim.git",
    "branch=stable", -- Latest stable release.
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "hugolesta.plugins" }, { import = "hugolesta.plugins.lsp" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
