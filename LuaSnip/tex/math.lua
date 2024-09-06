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

s({trig = "ee", dscr="equal", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      = <>
    ]],
    {
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

s({trig = "dse", dscr="second derivative", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \frac{d^2 <>}{d<>^2}<>
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

s({trig = "psod", dscr="second partial derivative, one variable", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \frac{\partial^2 <>}{\partial <>^2}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "pstd", dscr="second partial derivative, two variables", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \frac{\partial^2 <>}{\partial <> \partial <>}<>
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
      \left[ <> \right]<>
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

s({trig = "sc", dscr="scalar dot product", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \cdot <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "xx", dscr="times cross", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \times <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "dv", dscr="division symbol", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \div <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "eu", dscr="equivalent aka triple line equal", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \equiv <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "neq", dscr="not equal", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \neq <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "sim", dscr="similar or tilde", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \sim <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ap", dscr="approximate equal", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \approx <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "pt", dscr="proportionnal to", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \propto <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "pm", dscr="plus minus", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \pm <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "mp", dscr="minus plus", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \mp <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "qed", dscr="box", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Box <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "leq", dscr="less or equal than", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \leq <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "nleq", dscr="not less or equal than", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \nleq <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "geq", dscr="greater or equal than", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \geq <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ngeq", dscr="not greater or equal than", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \ngeq <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "iel", dscr="is element of", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \in <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "niel", dscr="is not element of", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    [[
      \nin <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "wd", dscr="wedge", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \wedge <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "da", dscr="dagger", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \dagger <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "al", dscr="arrow left", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \leftarrow <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "aal", dscr="double arrow left", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    [[
      \Leftarrow <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ar", dscr="arrow right", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \rightarrow <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "im", dscr="double arrow right or implies", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    [[
      \Rightarrow <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "nim", dscr="double arrow right or implies", snippetType="autosnippet", wordTrig = false, priority=1002},
  fmta(
    [[
      \nRightarrow <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ie", dscr="double arrow left right or is equivalent to", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    [[
      \Leftrightarrow <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "inf", dscr="infinity", snippetType="autosnippet", wordTrig = false, priority=1011},
  fmta(
    [[
      \infty <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "nb", dscr="nabla", snippetType="autosnippet", wordTrig = false, priority=1011},
  fmta(
    [[
      \nabla <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "dl", dscr="partial derivative del", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \partial <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "fra", dscr="for all", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \forall <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "exi", dscr="exists", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \exists <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "nth", dscr="nothing", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \varnothing <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "hb", dscr="hbar", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \hbar <>
    ]],
    {
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "dt", dscr="dot on top", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \dot{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "ddt", dscr="double dot on top", snippetType="autosnippet", wordTrig = false, priority=1001},
  fmta(
    [[
      \ddot{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "td", dscr="tilde on top", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \tilde{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "bar", dscr="bar on top", snippetType="autosnippet", wordTrig = false, priority=1100},
  fmta(
    [[
      \bar{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "mab", dscr="mathbb style for capital letters", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \mathbb{<>}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

}

