return {
  {
    "neovim/nvim-lspconfig", -- Ensure the LSP configuration plugin is loaded
    opts = function(_, opts)
      local nvim_lsp = require("lspconfig")
      opts.servers = opts.servers or {}

      -- Add clangd configuration
      nvim_lsp.clangd.setup({
        on_attach = function(client, bufnr)
          -- Diagnostics and keybindings for navigation
          vim.lsp.diagnostic.on_attach(client, bufnr)

          local opts = { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        end,
        flags = {
          debounce_text_changes = 150,
        },
      })
    end,
  },
}
