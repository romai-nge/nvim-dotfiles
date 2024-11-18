---@diagnostic disable: undefined-global
return {}, {
	s({ trig = "(", priority = 1 }, fmta("(<>)", { i(1) })),
	s({ trig = "{", priority = 1 }, fmta("{<>}", { i(1) })),
	s({ trig = "[", priority = 1 }, fmta("[<>]", { i(1) })),
--	s({ trig = "'", wordTrig = false, priority = 1 }, fmta("'<>'", { i(1) })),
	s({ trig = '"', priority = 1 }, fmta('"<>"', { i(1) })),
}
