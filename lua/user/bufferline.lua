
local M = {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons'
}

function M.config()
  local wk = require "which-key"

  wk.add {
    {
      "<leader>bh",
      "<cmd>BufferLineCloseLeft<CR>",
      desc = "Close left",
    },
    {
      "<leader>bl",
      "<cmd>BufferLineCloseRight<CR>",
      desc = "Close right",
    },
    {
      "<leader>bo",
      "<cmd>BufferLineCloseRight<cr><cmd>BufferLineCloseLeft<CR>",
      desc = "Close other",
    },
    {
      "<leader>bc",
      "<cmd>BufferLinePickClose<CR>",
      desc = "Close selected",
    },
  }

  vim.opt.termguicolors = true
  require("bufferline").setup{
    options = {
      numbers = "ordinal"
    }
  }

  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap

  -- keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
  -- keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
  -- keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
  -- keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
  -- keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
  -- keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
  -- keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
  -- keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
  -- keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
  -- keymap("n", "<leader>bp", ":BufferLinePick<CR>", opts)
  keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
  keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)

  local wk = require "which-key"
  wk.add {
    {
      "<leader>1",
      "<cmd>:BufferLineGoToBuffer 1<CR>",
      desc = "Tab 1",
    },
    {
      "<leader>2",
      "<cmd>:BufferLineGoToBuffer 2<CR>",
      desc = "Tab 2",
    },
    {
      "<leader>3",
      "<cmd>:BufferLineGoToBuffer 3<CR>",
      desc = "Tab 3",
    },
    {
      "<leader>4",
      "<cmd>:BufferLineGoToBuffer 4<CR>",
      desc = "Tab 4",
    },
    {
      "<leader>5",
      "<cmd>:BufferLineGoToBuffer 5<CR>",
      desc = "Tab 5",
    },
    {
      "<leader>6",
      "<cmd>:BufferLineGoToBuffer 6<CR>",
      desc = "Tab 6",
    },
    {
      "<leader>7",
      "<cmd>:BufferLineGoToBuffer 7<CR>",
      desc = "Tab 7",
    },
    {
      "<leader>8",
      "<cmd>:BufferLineGoToBuffer 8<CR>",
      desc = "Tab 8",
    },
    {
      "<leader>9",
      "<cmd>:BufferLineGoToBuffer 9<CR>",
      desc = "Tab 9",
    },
    {
      "<leader>bp",
      "<cmd>:BufferLinePick<CR>",
      desc = "Tab Pick",
    },
  }
end

return M
