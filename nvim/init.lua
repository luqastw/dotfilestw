-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[
  highlight Normal guibg=none ctermbg=none
  highlight NormalFloat guibg=none ctermbg=none
  highlight SignColumn guibg=none ctermbg=none
  highlight NormalNC guibg=none ctermbg=none
]])
