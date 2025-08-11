return {
  'tiesen243/vercel.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require("vercel").setup({
      theme = "dark",
      transparent = false,   -- Boolean: Sets the background to transparent (Default: false)
      italics = {
        comments = true,     -- Boolean: Italicizes comments (Default: true)
        keywords = true,     -- Boolean: Italicizes keywords (Default: true)
        functions = true,    -- Boolean: Italicizes functions (Default: true)
        strings = true,      -- Boolean: Italicizes strings (Default: true)
        variables = true,    -- Boolean: Italicizes variables (Default: true)
        bufferline = false   -- Boolean: Italicizes bufferline (Default: false)
      },
      overrides = {},
    })
    vim.cmd 'colorscheme vercel'
  end,
}

-- return {
--   'thesimonho/kanagawa-paper.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd 'colorscheme kanagawa-paper-ink'
--   end,
-- }

-- return {
--   'webhooked/kanso.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd 'colorscheme kanso'
--   end,
-- }

-- return {
--   'rose-pine/neovim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd 'colorscheme rose-pine'
--   end,
-- }

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
