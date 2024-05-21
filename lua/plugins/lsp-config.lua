return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.volar.setup({ capabilities = capabilities })
      lspconfig.tailwindcss.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.intelephense.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.htmx.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
