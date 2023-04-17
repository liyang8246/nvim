local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

--custom.plugins.null-ls.lua

local sources = {

  b.formatting.clang_format,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
