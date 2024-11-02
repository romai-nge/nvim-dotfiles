---@diagnostic disable: undefined-global

local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {}, {
    -- Exponents
    s({ trig = "sr", wordTrig = false }, { t("^{2}") }, { condition = in_mathzone }),
    s({ trig = "cb", wordTrig = false }, { t("^{3}") }, { condition = in_mathzone }),
    s({ trig = "inv", wordTrig = false }, { t("^{-1}") }, { condition = in_mathzone }),

    -- Super/Sub-scripts
    s({ trig = "rd", wordTrig = false }, { t("^{"), i(1), t("}") }, { condition = in_mathzone }),
    s({ trig = "_", wordTrig = false }, { t("_{"), i(1), t("}") }, { condition = in_mathzone }),
    s({ trig = '([%a])ij' },
        fmta(
            '<>_{ij}',
            {
                f(function(_, snip) return snip.captures[1] end),
            }
        )
    ),

    -- Complex numbers
    s({ trig = "conj", wordTrig = false }, { t("^{*}") }, { condition = in_mathzone }),
    s({ trig = "Re", wordTrig = false }, { t("\\mathrm{Re}") }, { condition = in_mathzone }),
    s({ trig = "Im", wordTrig = false }, { t("\\mathrm{Im}") }, { condition = in_mathzone }),

    s({trig = '([^%a])ff', regTrig = true, wordTrig = false},
      fmta(
        [[<>\frac{<>}{<>}]],
        {
          f( function(_, snip) return snip.captures[1] end ),
          i(1),
          i(2)
        }
      )
    ),
}
