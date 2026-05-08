local ok, jdtls = pcall(require, "jdtls")
if not ok then
  vim.notify("nvim-jdtls is not available", vim.log.levels.ERROR)
  return
end

local jdtls_cmd = "jdtls"
if vim.fn.executable(jdtls_cmd) == 0 then
  local mason_jdtls = vim.fs.joinpath(vim.fn.stdpath("data"), "mason", "bin", "jdtls")
  if vim.fn.executable(mason_jdtls) == 1 then
    jdtls_cmd = mason_jdtls
  else
    vim.notify(
      "jdtls executable not found. Install with :MasonInstall jdtls",
      vim.log.levels.ERROR
    )
    return
  end
end

local root_dir = vim.fs.root(0, {
  "mvnw",
  "gradlew",
  "pom.xml",
  "build.gradle",
  "build.gradle.kts",
  ".git",
})

if not root_dir then
  root_dir = vim.fn.getcwd()
end

local project_name = vim.fn.fnamemodify(root_dir, ":t")
local workspace_dir = vim.fs.joinpath(vim.fn.stdpath("state"), "jdtls-workspace", project_name)

local config = {
  cmd = {
    jdtls_cmd,
    "-data",
    workspace_dir,
  },
  root_dir = root_dir,
  settings = {
    java = {},
  },
  init_options = {
    bundles = {},
  },
}

jdtls.start_or_attach(config)
