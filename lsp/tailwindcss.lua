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
		"svelte",
		"html",
		"css",
		"scss",
	},
	root_markers = { 
		"tsconfig.json", 
		"jsconfig.json", 
		"package.json", 
		".git", 
		"tailwind.config.js", 
		"tailwind.config.ts",
		"tailwind.config.cjs",
	},
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					-- Standard class attribute
					{ "class:\\s*['\"]([^'\"]*)['\"]" },
					{ "className:\\s*['\"]([^'\"]*)['\"]" },
					-- Template literals
					{ "class:\\s*`([^`]*)`" },
					{ "className:\\s*`([^`]*)`" },
					-- JSX class prop
					{ "class=\\{['\"]([^'\"]*)['\"]\\}" },
					{ "className=\\{['\"]([^'\"]*)['\"]\\}" },
				},
			},
			validate = true,
			lint = {
				cssConflict = "warning",
				invalidApply = "error",
				invalidScreen = "error",
				invalidVariant = "error",
				invalidConfigPath = "error",
				invalidTailwindDirective = "error",
				recommendedVariantOrder = "warning",
			},
			classAttributes = {
				"class",
				"className",
				"classList",
				"ngClass",
			},
		},
	},
}
