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
    [[
      \frac{<>}{<>}<>
    ]],
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
    [[
      \sqrt{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "nsq", dscr="nth root setup", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    [[
      \sqrt[<>]{<>}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "vv", dscr="vector arrow", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \vec{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "bra", dscr="quantum mechanics bra", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \langle <> |<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ket", dscr="quantum mechanics ket", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      | <> \rangle <>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "bk", dscr="quantum mechanics braket", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \langle <> | <> \rangle <>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "bok", dscr="quantum mechanics bra-operator-ket", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \langle <> | <> | <> \rangle <>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ha", dscr="hat", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \hat{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "su", dscr="general subscript", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      _{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ss", dscr="general superscript", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      ^{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "sm", dscr="defined sum", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \sum_{<>}^{<>}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "de", dscr="derivative", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \frac{d<>}{d<>}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "pd", dscr="partial derivative", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \frac{\partial <>}{\partial <>}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "int", dscr="undefined integral", snippetType="autosnippet", wordTrig = false, priority=1000},
  fmta(
    [[
      \int <> \; d<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "iint", dscr="undefined double integral", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    [[
      \iint <> \; d<> d<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "iiint", dscr="undefined triple integral", snippetType="autosnippet", wordTrig = false, priority=1002},
  fmta(
    [[
      \iiint <> \; d<> d<> d<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "oint", dscr="circular integral", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \oint <> \; d<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "dint", dscr="defined integral", snippetType="autosnippet", wordTrig = false, priority=1005},
  fmta(
    [[
      \int_{<>}^{<>} <> \; d<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "diint", dscr="defined double integral", snippetType="autosnippet", wordTrig = false, priority=1006},
  fmta(
    [[
      \int_{<>}^{<>}\int_{<>}^{<>} <> \; d<> d<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(5),
      i(6),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "diiint", dscr="defined triple integral", snippetType="autosnippet", wordTrig = false, priority=1007},
  fmta(
    [[
      \int_{<>}^{<>}\int_{<>}^{<>}\int_{<>}^{<>} <> \; d<> d<> d<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(5),
      i(6),
      i(7),
      i(8),
      i(9),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "fint", dscr="infinite integral", snippetType="autosnippet", wordTrig = false, priority=1005},
  fmta(
    [[
      \int_{\infty}^{\infty} <> \; d<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "pp", dscr="parenthesis", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \left( <> \right)<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "bb", dscr="right brackets", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \left[ <> \r{ight]<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "sb", dscr="squiggly brackets", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \left\{ <> \right\}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "soe", dscr="system of equations", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{cases}
          <>
      \end{cases}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "nn", dscr="new line", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \\
      <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "prd", dscr="defined product", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \prod_{<>}^{<>}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ovr", dscr="overline", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \overline{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "udr", dscr="underline", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \underline{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),



}

