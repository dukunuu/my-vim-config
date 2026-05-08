return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        -- Prevents the "vim.notify overwritten" warning
        notify = {
            enabled = true,
        },
        -- Silence LSP progress spam if needed
        lsp = {
            progress = { enabled = true },
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            bottom_search = true,         -- classic bottom cmdline for search
            command_palette = true,        -- position the cmdline and popupmenu together
            long_message_to_split = true,  -- long messages sent to a split
            inc_rename = false,
            lsp_doc_border = false,
        },
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        {
            "rcarriga/nvim-notify",
            opts = {
                background_colour = "#000000",  -- Fixes NotifyBackground warning
                timeout = 3000,
                max_height = function()
                    return math.floor(vim.o.lines * 0.75)
                end,
                max_width = function()
                    return math.floor(vim.o.columns * 0.75)
                end,
            },
        },
    },
}
