---@diagnostic disable: undefined-global

-- 2 lists the first for normal snippets and the second for autosnippets
return {
	s("test", t("LOADED")),
}, {
	s("(", { t("("), i(1), t(")") }),
}
