local on_attach = require("utils.lsp").on_attach
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Language Server Protocol (LSP)
require("servers.lua_ls")(lspconfig, capabilities, on_attach)
require("servers.pyright")(lspconfig, capabilities, on_attach)
require("servers.gopls")(lspconfig, capabilities, on_attach)
require("servers.json_ls")(lspconfig, capabilities, on_attach)
require("servers.ts_ls")(lspconfig, capabilities, on_attach)
require("servers.bash_ls")(lspconfig, capabilities, on_attach)
require("servers.clangd_ls")(lspconfig, capabilities, on_attach)
-- require("servers.dockerls")(lspconfig, capabilities, on_attach)
require("servers.emmet_ls")(lspconfig, capabilities, on_attach)
-- require("servers.yamlls")(lspconfig, capabilities, on_attach)
require("servers.tailwindcss_ls")(lspconfig, capabilities, on_attach)
-- require("servers.solidity_ls_nomicfoundation")(lspconfig, capabilities, on_attach)

-- Linters & Formatters
require("servers.efm-langserver")(lspconfig, capabilities, on_attach)
