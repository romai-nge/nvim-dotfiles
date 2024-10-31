-- Language Server Protocol --
------------------------------
-- Analyses files open in the editor
-- We need to
-- 1) install the language server
-- 2) configure the editor to be able to communicate w/ it
--
-- Mason : manages LS installation
-- Mason-lspconfig : ensure that certain languages are installed (instead of using mason's interface)
-- Lsp-config : makes nvim and LSs communicate together
--
-- Keymaps : check :h vim.lsp.buf to see which fcts to call
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pyright",
                    "texlab",
					"marksman",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				cmd = {
					"C:\\Users\\romai\\AppData\\Local\\nvim-data\\mason\\packages\\clangd\\clangd_18.1.3\\bin\\clangd.exe",
				},
				capabilities = capabilities,
			})
			lspconfig.texlab.setup({
				capabilities = capabilities,
			})
			lspconfig.marksman.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
