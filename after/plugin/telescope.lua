require("telescope").load_extension "file_browser"
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.api.nvim_set_keymap("n", "<leader><leader>", ":Telescope file_browser<CR>", { noremap = true })
