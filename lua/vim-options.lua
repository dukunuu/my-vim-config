vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.keymap.set("n", "<space>cl", 'iconsole.log("")<esc>hi')
vim.keymap.set("n", "<space>cn", 'oconsole.log("")<esc>hi')
