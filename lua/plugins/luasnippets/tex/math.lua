---@diagnostic disable: undefined-global

local in_mathzone = require("luasnip.extras.conditions").in_mathzone

return {}, {
    -- Exponents
    s({ trig = "sr", wordTrig = false }, { t("^{2}") }, { condition = in_mathzone }),
    s({ trig = "cb", wordTrig = false }, { t("^{3}") }, { condition = in_mathzone }),
    s({ trig = "inv", wordTrig = false }, { t("^{-1}") }, { condition = in_mathzone }),

    -- Super/Sub-scripts
    s({ trig = "rd", wordTrig = false }, { t("^{"), i(1), t("}") }, { condition = in_mathzone }),
    s({ trig = "_", wordTrig = false }, { t("_{"), i(1), t("}") }, { condition = in_mathzone }),
    s({ trig = '([%a])([ijkn%d])' },
        fmta(
            '<>_{<>}',
            {
                f(function(_, snip) return snip.captures[1] end),
                f(function(_, snip) return snip.captures[2] end),
            }
        )
    )

    -- Complex numbers
    s({ trig = "conj", wordTrig = false }, { t("^{*}") }, { condition = in_mathzone }),
    s({ trig = "Re", wordTrig = false }, { t("\\mathrm{Re}") }, { condition = in_mathzone }),
    s({ trig = "Im", wordTrig = false }, { t("\\mathrm{Im}") }, { condition = in_mathzone }),
}
