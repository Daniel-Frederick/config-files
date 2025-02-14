return {
  {
    "neovim/nvim-lspconfig", -- LSP configurations
    opts = function(_, opts)
      local nvim_lsp = require("lspconfig")
      opts.servers = opts.servers or {}

      -- Common on_attach function to enable diagnostics and keybindings
      local on_attach = function(client, bufnr)
        vim.lsp.diagnostic.on_attach(client, bufnr)
        local map_opts = { noremap = true, silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", map_opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", map_opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", map_opts)
      end

      -- Define configurations for each language server
      local servers = {
        clangd = {},
        ts_ls = {}, -- changed from tsserver to ts_ls
        pyright = {},
        html = {},
        cssls = {},
        yamlls = {},
        bashls = {},
        jdtls = {},
      }

      -- Setup each server with common on_attach and debounce flags
      for server, config in pairs(servers) do
        config.on_attach = on_attach
        config.flags = { debounce_text_changes = 150 }
        nvim_lsp[server].setup(config)
      end
    end,
  },
  {
    "williamboman/mason.nvim", -- Automatically install LSP servers
    opts = {
      ensure_installed = {
        "clangd",
        "ts_ls", -- changed from tsserver to ts_ls
        "pyright",
        "html",
        "cssls",
        "yamlls",
        "bashls",
        "jdtls",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter", -- Treesitter for advanced syntax highlighting
    opts = {
      ensure_installed = {
        "cpp",
        "python",
        "javascript",
        "typescript",
        "html",
        "css",
        "yaml",
        "bash",
        "java",
      },
      highlight = { enable = true },
    },
  },
}
