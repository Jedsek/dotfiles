local plugins_path = vim.fn.stdpath("data") .. "/lazy/"

local function bootstrap(path, project)
  local path = plugins_path .. path
  if not vim.loop.fs_stat(path) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "--single-branch",
      "https://github.com/" .. project .. ".git",
      path,
    })
  end
  vim.opt.rtp:prepend(path)
end

bootstrap("lazy.nvim", "folke/lazy.nvim")
bootstrap("nfnl", "Olical/nfnl")

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup("plugins")
require("conf") 
