
local M = {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons'
}

function M.config()
  vim.opt.termguicolors = true
  require("bufferline").setup{
    options = {
      numbers = "ordinal"
    }
  }

  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap

  keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
  keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
  keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
  keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
  keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
  keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
  keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
  keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
  keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
  keymap("n", "<leader>bp", ":BufferLinePick<CR>", opts)
  keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
  keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)
end

return M
