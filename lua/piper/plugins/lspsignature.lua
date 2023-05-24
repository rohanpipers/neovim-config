local setup, signature = pcall(require, "lsp_signature")
if not setup then
	return
end

signature.setup({
	bind = true, -- This is mandatory, otherwise border config won't get registered.
	handler_opts = {
		border = "rounded",
	},
}) -- no need to specify bufnr if you don't use toggle_key
