local M = {
    "tzachar/cmp-tabnine",
    event = "InsertEnter",
    build = "./install.sh",
    -- windows terminal support
    -- build = "powershell ./install.ps1",
}

function M.config() end

return M
-- {
-- },
