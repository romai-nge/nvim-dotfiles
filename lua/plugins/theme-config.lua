return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- The config fct runs require("plugin_x").setup() for us
    -- and it assigns the vim commands that we give.
    config = function()
      require("catppuccin").setup({
        flavour = "frappe",
        -- flavour = "macchiato"
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
