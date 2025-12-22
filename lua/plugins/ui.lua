return {
  -- One Dark Pro Theme (Precision VS Code Match)
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        colors = {
          onedark = {
            bg = "#16191d", -- VS Code editor.background
            fg = "#abb2bf", -- VS Code editor.foreground
            red = "#e06c75", -- VS Code Red
            orange = "#d19a66", -- VS Code Orange
            yellow = "#e5c07b", -- VS Code Yellow
            green = "#98c379", -- VS Code Green
            cyan = "#56b6c2", -- VS Code Cyan
            blue = "#61afef", -- VS Code Blue
            purple = "#c678dd", -- VS Code Purple
            gray = "#5c6370", -- VS Code Gray
            comment = "#7f848e", -- VS Code Comment
          },
        },
        highlights = {
          -- General UI mapping
          CursorLine = { bg = "#2c313c" }, -- editor.lineHighlightBackground
          LineNr = { fg = "#667187" }, -- editorLineNumber.foreground
          CursorLineNr = { fg = "#abb2bf", bold = true }, -- editorLineNumber.activeForeground
          Visual = { bg = "#404859" }, -- editor.selectionBackground (adjusted for visibility)
          
          -- Diagnostics (Error Lens style)
          DiagnosticVirtualTextError = { italic = true },
          DiagnosticVirtualTextWarn = { italic = true },
        },
        options = {
          transparency = true,
          cursorline = true,
        },
        styles = {
          types = "NONE",
          methods = "NONE",
          numbers = "NONE",
          strings = "NONE",
          comments = "italic",
          keywords = "bold,italic",
          constants = "NONE",
          functions = "italic",
          operators = "NONE",
          variables = "NONE",
          parameters = "NONE",
          conditionals = "italic",
          virtual_texts = "NONE",
        },
      })
      vim.cmd("colorscheme onedark")
    end,
  },

  -- Icons (Material/Nerd Font)
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
    opts = {
      default = true,
      strict = true,
    },
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",
        component_separators = "|",
        section_separators = "",
      },
    },
  },

  -- Bufferline (Tabs)
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        mode = "buffers",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  -- Breadcrumbs
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },
}
