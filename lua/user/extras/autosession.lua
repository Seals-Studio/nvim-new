local M = {
  "rmagatti/auto-session",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    {
      "<leader>sd",
      "<cmd>Autosession delete<CR>",
      desc = "Find Delete",
    },
    {
      "<leader>sf",
      "<cmd>Autosession search<CR>",
      desc = "Find",
    },
    {
      "<leader>sr",
      "<cmd>SessionRestore<CR>",
      desc = "Restore",
    },
    {
      "<leader>ss",
      "<cmd>SessionSave<CR>",
      desc = "Save",
    },
    {
      "<leader>sx",
      "<cmd>SessionDelete<CR>",
      desc = "Delete",
    },
  }

  vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
  -- local opts = {
  --   auto_session_enabled = true,
  --   auto_save_enabled = nil,
  --   auto_restore_enabled = nil,
  --   auto_session_suppress_dirs = {
  --     -- vim.fn.glob(vim.fn.stdpath "config" .. "/*"),
  --     os.getenv "HOME",
  --     -- os.getenv "HOME" .. "/Machfiles",
  --   },
  --   auto_session_use_git_branch = nil,
  --   -- the configs below are lua only
  --   bypass_session_save_file_types = { "alpha" },
  -- }
  --
  -- vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
  --
  -- -- telescope.load_extension "session-lens"
  --
  -- session_lens.setup {
  --   path_display = { "shorten" },
  --   -- theme_conf = { border = false },
  --   previewer = false,
  --   prompt_title = "Sessions",
  -- }
  --
  -- auto_session.setup(opts)

  -- local function restore_nvim_tree()
  --   local nvim_tree = require('nvim-tree')
  --   nvim_tree.change_dir(vim.fn.getcwd())
  --   nvim_tree.refresh()
  -- end
  -- local function open_nvim_tree()
  --   local nvim_tree = require('nvim-tree')
  --   nvim_tree.open()
  -- end
  -- local function close_nvim_tree()
  --   local nvim_tree = require('nvim-tree')
  --   nvim_tree.close()
  -- end

  require("auto-session").setup {
    log_level = vim.log.levels.ERROR,
    auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
    -- auto_session_suppress_dirs = { os.getenv "HOME", },
    auto_session_use_git_branch = false,
    auto_session_root_dir = vim.fn.stdpath "data" .. "/sessions/",
    auto_session_enable_last_session = true,
    bypass_session_save_file_types = { "alpha" },

    -- ⚠️ This will only work if Telescope.nvim is installed
    -- The following are already the default values, no need to provide them if these are already the settings you want.
    session_lens = {
      -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
      load_on_setup = true,
      theme_conf = { border = true },
      previewer = false,
    },

    -- 自动打开目录树
    pre_save_cmds = {"tabdo Neotree close"},
    post_restore_cmds = {"tabdo Neotree show"}

    -- pre_save_cmds = { close_nvim_tree },
    -- post_save_cmds = { open_nvim_tree },
    -- cwd_change_handling = {
    --   restore_upcoming_session = true, -- Disabled by default, set to true to enable
    --   pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
    --   post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
    --     require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
    --   end,
    -- },
  }

  -- Set mapping for searching a session.
  -- ⚠️ This will only work if Telescope.nvim is installed
  vim.keymap.set("n", "<C-s>", require("auto-session.session-lens").search_session, {
    noremap = true,
  })
end

return M
