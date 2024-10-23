return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	config = function()
		vim.g.mkdp_filetypes = { "markdown", "md" }
		vim.g.mkdp_auto_start = 1
		vim.g.mkdp_auto_close = 1
		vim.g.mkdp_refresh_slow = 0 -- To refresh only whe nwriting (if performances issues)
        vim.g.mkdp_images_path = "./images/"
        vim.keymap.set("n", '<leader>mp', ":MarkdownPreviewToggle<CR>", {})
	end, ft = { "markdown" },
}
