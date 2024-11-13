return {
	{
		-- Bottom line
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "dracula",
				},
				sections = {
					lualine_z = {
						function()
							return " " .. os.date("%H:%M")
						end,
					},
				},
			})
		end,
	},
	{
		-- Indent lines
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("ibl").setup()
		end,
	},
	{
		-- Notifications
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup()
		end,
	},
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
}
