return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "ahmedkhalf/project.nvim",
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        extensions = {
          projects = {},
        }
      })
      telescope.load_extension("projects")

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
      vim.keymap.set("n", "<leader>fp", function() telescope.extensions.projects.projects({}) end, { desc = "Find Projects" })
    end,
  },
}
