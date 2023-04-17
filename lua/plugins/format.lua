local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting


null_ls.setup({
  sources = {
    formatting.clang_format.with({extra_args = {"-style=WebKit"}}),
    formatting.black,
    formatting.rustfmt,
  },
})
