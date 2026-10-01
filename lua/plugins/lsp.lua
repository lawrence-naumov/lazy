return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              typeCheckingMode = "off",
            },
          },
        },
        terraformls = {
          cmd = { "/usr/local/bin/terraform-ls", "serve" },
          init_options = vim.empty_dict(),
        },
      },
    },
  },
}
