return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "shellcheck",
        "css-lsp",
        "pyright",
        "prettier",
        "eslint-lsp",
        "bashls",
        "clangd",
        "html",
      })
    end,
  },
}
