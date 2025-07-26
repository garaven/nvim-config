return {
  'rose-pine/neovim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd 'colorscheme rose-pine'
  end,
}

-- return {
--   'tiagovla/tokyodark.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd 'colorscheme tokyodark'
--   end,
-- }

-- return {
--   'Shatur/neovim-ayu',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd 'colorscheme ayu'
--   end,
-- }
