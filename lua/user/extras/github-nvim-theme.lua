local M = {
  "projekt0n/github-nvim-theme"
}

function M.config()
  require('github-theme').setup({})
  vim.cmd('colorscheme github_dark_tritanopia')
end

return M
