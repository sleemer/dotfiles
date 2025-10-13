return {
  "neovim/nvim-lspconfig",
  opts = {
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
