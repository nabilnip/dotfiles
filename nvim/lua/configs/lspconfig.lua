require("nvchad.configs.lspconfig").defaults()

local nvchad_configs = require "nvchad.configs.lspconfig"
local on_attach = nvchad_configs.on_attach
local capabilities = nvchad_configs.capabilities

vim.lsp.config('clangd', {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
})

local servers = { "html", "cssls", "clangd", "pylsp", }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
