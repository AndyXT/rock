local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, (require("cmp_nvim_lsp")).default_capabilities())
local lspconfig = require("lspconfig")
lspconfig.clangd.setup({capabilities = capabilities})
lspconfig.lua_ls.setup({capabilities = capabilities, settings = {Lua = {completion = {callSnippet = "Replace"}, runtime = {version = "LuaJIT"}, workspace = {library = {"${3rd}/luv/library", unpack(vim.api.nvim_get_runtime_file("", true))}, checkThirdParty = false}}}})
