return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { 
          "lua_ls", 
          "pyright", 
          "gopls", 
          "vtsls", 
          "rust_analyzer",
          "terraformls",
          "tflint",
          "helm_ls",
          "yamlls",
          "taplo",
          "prismals",
          "dockerls", 
          "docker_compose_language_service",
          "html",
          "cssls",
          "tailwindcss",
        },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
            },
          },
        },
        pyright = {},
        gopls = {},
        vtsls = {},
        rust_analyzer = {},
        terraformls = {},
        tflint = {},
        helm_ls = {},
        yamlls = {},
        taplo = {},
        prismals = {},
        dockerls = {},
        docker_compose_language_service = {},
        html = {},
        cssls = {},
        tailwindcss = {},
      }

      for server, config in pairs(servers) do
        config.capabilities = capabilities
        -- Neovim 0.11 way
        if vim.lsp.config then
          vim.lsp.config(server, {
            config = config,
          })
          vim.lsp.enable(server)
        else
          -- Legacy nvim-lspconfig way
          lspconfig[server].setup(config)
        end
      end

      -- Keymaps for LSP
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        end,
      })
    end,
  },
}
