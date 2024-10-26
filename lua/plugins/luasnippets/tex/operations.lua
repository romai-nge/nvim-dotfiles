---@diagnostic disable: undefined-global

local in_mathzone = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {}, {
	s({trig="sr", wordTrig=false}, { t("^{2}") }, { condition = in_mathzone }),
}
