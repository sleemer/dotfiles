return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  config = function()
    vim.opt.list = true
    vim.opt.listchars = { space = "·" }

    require("ibl").setup({
      indent = {
        char = "│",
      },
      whitespace = {
        remove_blankline_trail = true,
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        show_exact_scope = true,
      },
    })
  end,
}
