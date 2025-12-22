return {
  {
    "DimitriKushnarev/material-icons.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("material-icons").setup({
        -- You can customize icons here if needed
      })
    end,
  },
}
