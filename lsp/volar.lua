
---@type vim.lsp.Config
return {
	cmd = { "vue-language-server", "--stdio" },
	filetypes = {
    "vue",
	},
	root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
  init_options = {
    vue = {
      hybridMode = false,
    },
    typescript = {
      tsdk = "/home/dukunuu/.nvm/versions/node/v22.14.0/lib/node_modules/typescript/lib",
    },
  }
}
