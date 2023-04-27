local telebuiltin = require "telescope.builtin"

vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<c-p>", telebuiltin.find_files, {})
vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
