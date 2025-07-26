return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup {}

    local map = vim.keymap.set
    map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
    map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
    map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Buffers' })
    map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })
  end,
}
