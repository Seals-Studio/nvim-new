local M = {
  "tiagovla/scope.nvim"
}

function M.config()
  require("scope").setup({})
  require("telescope").load_extension("scope")
end

return M
