local function lsp_status()
  local msg = ''
  local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
  local clients = vim.lsp.get_clients()

  -- Check for no active LSP clients
  if next(clients) == nil then
      return msg
  end

  -- Iterate through clients to find one that supports the current filetype
  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      return '  LSP:' ..  client.name
    end
  end

  -- Handle cases where filetype is unsupported by active LSPs
  return msg
end

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
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_b = { 'filename' },
        lualine_c = {
          { 'branch', icon = '' },
          { 'diff' },
        },
        lualine_x = {
          'diagnostics',
          { lsp_status, color = { fg = '#8fbcbb' } },
        },
        lualine_y = {
          { 'encoding', fmt = string.upper },
          'fileformat',
          'filetype',
        },
        lualine_z = {
          'progress',
          'location',
        }
      },
    })
  end
}
