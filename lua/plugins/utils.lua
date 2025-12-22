return {
  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",

  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim", opts = {} },

  -- Auto-close brackets
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- Keymap helper
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- Terminal management
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })

      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
      end

      -- if you only want these mappings for toggle term use term://*toggleterm#* instead
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*",
        callback = function()
          set_terminal_keymaps()
        end,
      })

      -- Shortcut for floating terminal
      vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Floating Terminal" })
      -- Shortcut for horizontal terminal
      vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<cr>", { desc = "Toggle Horizontal Terminal" })
      -- Shortcut for vertical terminal
      vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", { desc = "Toggle Vertical Terminal" })
    end,
  },

  -- .env support
  { "tpope/vim-dotenv" },

  -- Project management (The "Project Manager")
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        detection_methods = { "lsp", "pattern" },
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "go.mod" },
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_focused_file = { enable = true, update_root = true },
      })
    end,
  },
}
