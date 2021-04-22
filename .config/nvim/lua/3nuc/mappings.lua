local options = { noremap = true }
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>w', options)

vim.api.nvim_set_keymap('n','<C-j>', '<C-w><C-j>', options)
vim.api.nvim_set_keymap('n','<C-k>', '<C-w><C-k>', options)
vim.api.nvim_set_keymap('n','<C-h>', '<C-w><C-h>', options)
vim.api.nvim_set_keymap('n','<C-l>', '<C-w><C-l>', options)
--vim.api.nvim_set_keymap('n','<leader>q', ':q<cr>', options)
vim.api.nvim_set_keymap('n','<leader>w', ':w<cr>', options)
vim.api.nvim_set_keymap('n','<leader>ve', ':e $MYVIMRC<cr>', options)
vim.api.nvim_set_keymap('n','<down>', ':cn<cr>', options)
vim.api.nvim_set_keymap('n','<up>', ':cp<cr>', options)


vim.api.nvim_set_keymap('n','<leader>ll', ':lua vim.lsp.stop_client(vim.lsp.get_active_clients())<cr>:edit<cr>', options)
--vim.api.nvim_set_keymap('t','<esc>', '<C-\\><C-N>', options)

function custom_git_branches()
  local actions = require'telescope.actions'
  require'telescope.builtin'.git_branches({attach_mappings = function(_, map)
    actions.select_default:replace(actions.git_track_branch)
      return true
    end
  })
end
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>lua custom_git_branches()<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope git_files<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>fs', '<cmd>Telescope lsp_document_symbols<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>fS', '<cmd>Telescope lsp_document_symbols<cr>', options)

vim.api.nvim_set_keymap( 'n', '<leader>fd', '<cmd>Telescope lsp_document_diagnostics<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>fD', '<cmd>Telescope lsp_workspace_diagnostics<cr>', options)

vim.api.nvim_set_keymap( 'n', '<leader>fG', ':Telescope grep_string search=<C-R><C-W><cr>', options)

vim.api.nvim_set_keymap( 'n', '<leader>fF', '<cmd>Telescope find_files<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>fS', '<cmd>Telescope lsp_workspace_symbols<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
vim.api.nvim_set_keymap( 'i', '<C-Space>', "compe#complete()", {noremap = true, expr = true, silent = true})
vim.api.nvim_set_keymap( 'i', '<silent><expr> <CR>', 'compe#confirm(\'<CR>\')', options)
vim.api.nvim_set_keymap( 'i', '<silent><expr> <C-e>', 'compe#close(\'<C-e>\')', options)
vim.api.nvim_set_keymap( 'n', '<leader>s', ':G<CR>', options)
vim.api.nvim_set_keymap( 'n', '<leader>ggp', ':G -c push.default=current push<CR>' , options)
vim.api.nvim_set_keymap( 'n', '<leader>gL', ':G pull', options)
vim.api.nvim_set_keymap( 'n', '<leader>gcb', ':G checkout origin/develop -b' , options)
vim.api.nvim_set_keymap( 'n', '<leader>glo', '<cmd>Gcl<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>glO', '<cmd>Gcl %<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>gf', ':G fetch<cr>', options)
vim.api.nvim_set_keymap( 'n', '<silent>w', '<Plug>CamelCaseMotion_w', options)
vim.api.nvim_set_keymap( 'n', '<silent>b', '<Plug>CamelCaseMotion_b', options)
vim.api.nvim_set_keymap( 'n', '<leader>p', ':RnvimrToggle<cr>', options)
vim.api.nvim_set_keymap( 'n', '<leader>P', ':RnvimrResize<cr>', options)
