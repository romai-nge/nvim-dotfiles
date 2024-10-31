---@diagnostic disable: undefined-global
local in_mathzone = require("luasnip.extras.conditions").in_mathzone
return {}, {
    s(
        { trig = "([%a])bf", regTrig = true, wordTrig = false },
        fmta("\\mathbf{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bf", wordTrig = false },
        fmta("\\mathbf{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bs", wordTrig = false },
        fmta("\\boldsymbol{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "([%a])vec", regTrig = true, wordTrig = false },
        fmta("\\vec{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "vec", wordTrig = false },
        fmta("\\vec{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "([%a])hat", regTrig = true, wordTrig = false },
        fmta("\\vec{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "hat", wordTrig = false },
        fmta("\\vec{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "([%a])bar", regTrig = true, wordTrig = false },
        fmta("\\vec{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bar", wordTrig = false },
        fmta("\\vec{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "([%a])dot", regTrig = true, wordTrig = false },
        fmta("\\vec{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "dot", wordTrig = false },
        fmta("\\vec{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "([%a])ddot", regTrig = true, wordTrig = false },
        fmta("\\vec{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "ddot", wordTrig = false },
        fmta("\\vec{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "([%a])tilde", regTrig = true, wordTrig = false },
        fmta("\\vec{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "tilde", wordTrig = false },
        fmta("\\vec{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "([%a])und", regTrig = true, wordTrig = false },
        fmta("\\vec{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "und", wordTrig = false },
        fmta("\\vec{<>}", {
            i(1),
        }),
        { condition = in_mathzone }
    ),
}
