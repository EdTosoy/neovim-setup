return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "SmiteshP/nvim-navic",
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
          "jsonls",
          "sqls",
        },
      })

      -- Mason tools (LSPs + Formatters + Debuggers)
      local registry = require("mason-registry")
      local tools = { 
        "actionlint", "sql-formatter", "prettier", "stylua", 
        "goimports", "gofumpt", "delve", "codelldb", "js-debug-adapter" 
      }
      for _, tool in ipairs(tools) do
        local p = registry.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      local navic = require("nvim-navic")

      -- "Error Lens" Style Diagnostics
      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          source = "if_many",
        },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
          focused = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      })

      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
            },
          },
        },
        pyright = {},
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
            },
          },
        },
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
        jsonls = {},
        sqls = {},
      }

      for server, config in pairs(servers) do
        config.capabilities = capabilities
        config.on_attach = function(client, bufnr)
          if client.server_capabilities.documentSymbolProvider then
            navic.attach(client, bufnr)
          end
        end

        if vim.lsp.config then
          vim.lsp.config(server, {
            config = config,
          })
          vim.lsp.enable(server)
        else
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
          -- Move code action to a better shortcut if needed, but <leader>ca is standard
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        end,
      })
    end,
  },
}
