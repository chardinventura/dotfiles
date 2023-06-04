-- Show buffers opened
vim.g['airline#extensions#tabline#enabled'] = false
vim.g['airline#extensions#tabline#fnamemod'] = ':t' -- Show only the name of the buffer

-- Change the separators to triangles
vim.g.airline_powerline_fonts = true

vim.g.airline_extensions = {'tabline', 'coc'}

vim.g.airline_section_z = '%p%% ☰ %l/%L'

vim.g['airline#extensions#default#layout'] = {
	{ 'a', 'c' },
    { 'x', 'y', 'z', 'error', 'warning' }
}
