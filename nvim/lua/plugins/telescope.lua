return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "smart" },
          mappings = {
            i = {
              ["<C-h>"] = "which_key",
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            },
          }
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      telescope.load_extension("fzf")
      telescope.load_extension("ui-select")

      -- set keymaps
      local keymap = vim.keymap
      local builtin = require("telescope.builtin")

      keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Fuzzy find files in cwd" })
      keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Fuzzy find recent files" })
      keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "Fuzzy find string in cwd" })
      keymap.set('n', '<leader>fc', builtin.grep_string, { desc = "Fuzzy find string under cursor in cwd" })
    end
  }
}
