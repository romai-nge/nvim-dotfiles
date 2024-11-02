---@diagnostic disable: undefined-global
local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
return {}, {
    s(
        { trig = "([%a])bm", regTrig = true, wordTrig = false },
        fmta("\\bm{<>}", {
            f(function(_, snip)
                return snip.captures[1]
            end),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bm", wordTrig = false },
        fmta("\\bm{<>}", {
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
