local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map('i', 'jj', '<Esc>', {noremap = true})
-- Стрелочки откл. Использовать hjkl
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
map('n', '<C-s>', ':w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:w<CR>', default_opts)
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
map('n', '<Tab>', [[<CMD>:bnext<CR>]], default_opts)
map('n', '<S-Tab>', [[<CMD>:bprevious<CR>]], default_opts)
----------------------------------------------------------
-- Conqueror of Competetion keys
----------------------------------------------------------
map('n', 'K', [[<cmd>call CocAction('doHover')<cr>]], default_opts)
----------------------------------------------------------
-- IntelliJ-like keys
----------------------------------------------------------
map('n', '`1', [[<cmd>:NERDTreeToggle<cr>]], default_opts)
map('n', '`2', [[<CMD>Telescope buffers<CR>]], default_opts)
map('n', '``', ':Telescope fd<cr>', default_opts)
map('n', '`6', [[<CMD>lua require('renamer').rename()<CR>]], default_opts)
map('n', '<C-f>', ': Telescope live_grep<cr>', default_opts)
map('n', '<cr>', [[<CMD>CocAction<CR>]], default_opts)
map('n', '<F12>', [[<CMD>lua require("FTerm").toggle()<CR>]], default_opts)
