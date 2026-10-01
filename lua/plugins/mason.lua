return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      if opts.ensure_installed then
        opts.ensure_installed = vim.tbl_filter(function(v)
          return v ~= "terraform-ls"
        end, opts.ensure_installed)
      end
    end,
  },
}
