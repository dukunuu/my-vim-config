return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local fzf = require("fzf-lua")
        fzf.setup({ "telescope" })  -- telescope-like layout preset

        vim.keymap.set("n", "<C-p>", fzf.files, {})
        vim.keymap.set("n", "<space>fg", fzf.live_grep, {})
    end,
}
