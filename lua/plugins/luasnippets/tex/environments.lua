---@diagnostic disable: undefined-global
return {}, {
	s({ trig = "mk" }, fmta("\\(<>\\)", { i(1) })),
	s(
		{ trig = "dm" },
		fmta(
			[[

                \begin{equation*}
                    <>
                \end{equation*}
                <>
            ]],
			{ i(1), i(0) }
		)
	),
}
