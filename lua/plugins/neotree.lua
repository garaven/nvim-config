return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false, -- neo-tree will lazily load itself
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = true,
        },
        follow_current_file = { enabled = true },
      },
      window = {
        position = 'left',
        width = 30,
        mappings = {
          ['<cr>'] = 'open', -- enter abre el archivo
          ['o'] = 'open',
          ['q'] = 'close_window', -- q cierra el árbol
          ['a'] = 'add', -- crear archivo
          ['d'] = 'delete', -- eliminar archivo
          ['r'] = 'rename',
          ['c'] = 'copy',
        },
      },
    }
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { silent = true, noremap = true })
  end,
}
