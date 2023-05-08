require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
  cmd = {
    "clangd",
    "--header-insertion=never",
    "--query-driver=/opt/homebrew/opt/llvm/bin/clang",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--offset-encoding=utf-16",
  }
}

require("lspconfig").rust_analyzer.setup {
  cmd = {"rust-analyzer"}
}
