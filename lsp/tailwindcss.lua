---@type vim.lsp.Config
return {
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
    "vue",
	},
	root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git", "tailwind.config.js", "tailwind.config.ts" },
}

