return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = {
      'lua',
      'bash',
      'html',
      'css',
      'javascript',
      'typescript',
      'json',
      'markdown',
      'markdown_inline',
      'vim',
      'tsx',
      'python',
      'java',
      'gitignore',
      'sql',
      'markdown',
      'bash',
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
}
