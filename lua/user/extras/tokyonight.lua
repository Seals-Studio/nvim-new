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
    },
    on_highlights = function(hl, c)
      hl.Visual = {
        bg = c.red,
      }
    end
  }
  vim.cmd.colorscheme "tokyonight"
end

return M
