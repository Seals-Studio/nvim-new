local M = {
  "projekt0n/github-nvim-theme",
}

function M.config()
  require('github-theme').setup({})
  -- github_dark
  -- github_dark_default
  -- github_dark_dimmed
  -- github_dark_high_contrast
  -- github_dark_colorblind
  -- github_dark_tritanopia
  vim.cmd('colorscheme github_dark_dimmed')
end

return M
