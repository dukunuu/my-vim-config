---@type vim.lsp.Config
return {
  cmd = { "astro-ls", "--stdio" },
  filetypes = { "astro" },
  root_markers = {
    {
      "astro.config.js",
      "astro.config.mjs",
      "astro.config.cjs",
      "astro.config.ts",
      "astro.config.mts",
      "astro.config.cts",
    },
    "package.json",
    ".git",
  },
}
