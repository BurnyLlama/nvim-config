local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("Failed to initialise LSP!")
	return
end

require("qwik.lsp.lsp-installer")
require("qwik.lsp.handlers").setup()
