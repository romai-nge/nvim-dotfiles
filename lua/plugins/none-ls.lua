--------------------------
-- Linting & Formatting --
--------------------------
-- Linting : algorithm that finds potential errors
--           in the code (wrong spelling, specific patterns, ...)
-- Formatting : adjusting indentation, line length, ...
--
-- None-ls : turns all linters and formatters (1 different for each language)
--           into one "LSP"
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Formatters
        null_ls.builtins.formatting.stylua, -- Lua
        null_ls.builtins.formatting.isort, -- Python
        null_ls.builtins.formatting.black, -- Python

        -- Linters
        null_ls.builtins.diagnostics.pylint.with({ -- Python
          diagnostics_postprocess = function(diagnostic)
            diagnostic.code = diagnostic.message_id
          end,
        }),
      },
    })

    vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format, {})
  end,
}
