return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      enable_git_status = true,
      enable_diagnostics = true,
      popup_border_style = "rounded",
      default_component_configs = {
        container = {
          enable_character_fade = true,
        },
        indent = {
         indent_size = 2,
          padding = 2, -- extra padding on left hand side
          -- indent guides
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",
          -- expander config, needed for nesting files
          with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
      },
      window = {
        position = "right",
      },
      filesystem = {
        use_libuv_file_watcher = true,
      },
    })

    local keymap = vim.keymap

    keymap.set('n', '<leader>et', ':Neotree toggle filesystem reveal right<CR>', { desc = "Toggle file explorer" })
    keymap.set('n', '<leader>ef', ':Neotree filesystem reveal right<CR>', { desc = "Open and focus on file explorer" })
  end
}
