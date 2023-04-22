local telebuiltin = require("telescope.builtin")

vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<c-p>", telebuiltin.find_files, {})
