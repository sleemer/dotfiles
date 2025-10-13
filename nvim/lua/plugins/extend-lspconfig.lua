return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      jsonnet_ls = {
        cmd = {
          "jsonnet-language-server",
          "-t",
        },
      },
    },
  },
}
