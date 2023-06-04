local keyset = vim.keymap.set 
local opt = {silent = true, nowait = true}

keyset('n', '<leader><TAB>', ':NvimTreeToggle<CR>')

keyset('n', '<A-r>', ':luafile %<CR>', opt)
keyset('v', '<A-r>', ':luafile %<CR>', opt)

keyset('n', '<A-S-r>', ':so $MYVIMRC<CR>', opt)
keyset('v', '<A-S-r>', ':so $MYVIMRC<CR>', opt)

-- Open terminal
keyset('', '<leader>t', ':terminal<CR>', opt)

-- Move between buffers
keyset('', '<leader>d', ':bdelete<CR>', opt)

keyset('', '<leader>n', ':bnext<CR>', opt)
keyset('', '<leader><S-n>', ':bprevious<CR>', opt)
