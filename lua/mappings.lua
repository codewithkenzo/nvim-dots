require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
--map('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", default_opts)
-- old telescope: vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
vim.cmd [[autocmd SwapExists * let v:swapchoice = "e"]]
-- open Dashboard on leader U
vim.api.nvim_set_keymap("n", "<leader>U", ":Alpha<CR>", { noremap = true, silent = true })
-- save session
vim.api.nvim_set_keymap("n", "<leader>ss", ":SessionSave<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ff", require("fzf-lua").files, { desc = "Fzf Files" })
vim.keymap.set("n", "<leader>fw", require("fzf-lua").live_grep, { desc = "Fzf grep the whole project" })
vim.keymap.set("n", "<leader>fp", require("fzf-lua").lgrep_curbuf, { desc = "Fzf Grep the current buffer" })
vim.keymap.set("n", "<leader>fc", function()
  require("fzf-lua").files { cwd = "~/.config" }
end, { desc = "Fzf into .config/" })

vim.keymap.set("n", "<leader>fa", function()
  require("fzf-lua").files { cwd = "~/" }
end, { desc = "Fzf into .config/" })

vim.keymap.set("n", "<leader>fd", function()
  require("fzf-lua").files { cwd = "~/crucial/Development/" }
end, { desc = "Fzf into .config/" })


-- file browser
vim.keymap.set("n", "<leader>e", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
vim.keymap.set("n", "<leader>pf", ":Telescope persisted<CR>", { noremap = true })
vim.keymap.set('n', '<leader>s/', ':SearchBoxIncSearch<CR>')
vim.keymap.set('n', '<leader>sr', ':SearchBoxReplace<CR>')
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

vim.keymap.set('n', '<leader>ft', '<CMD>lua require("FTerm").toggle()<CR>')
