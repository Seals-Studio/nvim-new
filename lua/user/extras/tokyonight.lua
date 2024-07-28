local M = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

function M.config()
  require("tokyonight").setup {
    style = 'night',
    light_style = 'day',
    styles = {
      sidebars = 'transparent',
    }
  }
  vim.cmd.colorscheme "tokyonight"
end

return M
