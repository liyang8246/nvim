local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting


null_ls.setup({
  sources = {
    formatting.clang_format.with({extra_args = {"--style","{BasedOnStyle: Google, IndentWidth: 4, AccessModifierOffset: 0,IndentAccessModifiers: true}"}}),
    formatting.black,
    formatting.rustfmt,
  },
})
