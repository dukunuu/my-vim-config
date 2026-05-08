
---@type vim.lsp.Config
return {
	cmd = { "svelteserver", "--stdio" },
	filetypes = {
    "svelte",
	},
	root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
  init_options = {
    vue = {
      hybridMode = false,
    },
  }
}

