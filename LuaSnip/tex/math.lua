local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local not_in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 0
end

return {
s({trig = "ff", dscr="fraction setup", snippetType="autosnippet", wordTrig = false},
  fmta(
    "\\frac{<>}{<>}<>",
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "sq", dscr="square root setup", snippetType="autosnippet", wordTrig = false},
  fmta(
    "\\sqrt{<>}<>",
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "nsq", dscr="nth root setup", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    "\\sqrt[<>]{<>}<>",
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

}

