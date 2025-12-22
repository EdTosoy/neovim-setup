return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { 
          "lua", "python", "javascript", "typescript", "tsx", 
          "go", "gomod", "gowork", "gosum",
          "rust", "hcl", "terraform", "proto", "toml", "sql",
          "html", "css", "json", "yaml", "dockerfile", "bash", "markdown" 
        },
        highlight = { enabled = true },
        indent = { enabled = true },
      })
    end,
  },
}
