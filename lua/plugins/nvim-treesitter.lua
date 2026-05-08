return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        local parsers = {
            "lua", "vim", "vimdoc", "query",
            "python", "c", "cpp",
            "markdown", "markdown_inline",
            "csv", "json"
        }

        -- Install only missing parsers
        local installed = require("nvim-treesitter.config").get_installed()
        local to_install = vim.tbl_filter(function(p)
            return not vim.tbl_contains(installed, p)
        end, parsers)
        if #to_install > 0 then
            require("nvim-treesitter").install(to_install)
        end

        -- Enable native highlighting + indentation per filetype
        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
