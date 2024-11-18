return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'nord',
        section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' },
      },
      sections = {
        lualine_b = {
          { 'branch', icon = '' },
          { 'diff' },
          { 'diagnostics' },
        },
      },
    })
  end
}
