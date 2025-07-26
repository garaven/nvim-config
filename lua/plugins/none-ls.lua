return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'jayp0521/mason-null-ls.nvim' },
  config = function()
    local null_ls = require 'null-ls'
    local formatting = null_ls.builtins.formatting -- to setup formatters

    -- Formatters & linters for mason to install
    require('mason-null-ls').setup {
      ensure_installed = { 'prettier', 'stylua' },
      automatic_installation = true,
    }

    null_ls.setup {
      sources = {
        formatting.prettier.with { filetypes = { 'html', 'json', 'markdown' } },
        formatting.stylua,
      },
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = vim.api.nvim_create_augroup('LspFormatting', {}),
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { async = false }
            end,
          })
        end
      end,
    }
  end,
}
