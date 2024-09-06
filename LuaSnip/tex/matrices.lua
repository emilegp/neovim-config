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

return {
s({trig = "11m", dscr="1x1 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "12m", dscr="1x2 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "13m", dscr="1x3 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <>
      \end{bmatrix}<>
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

s({trig = "14m", dscr="1x4 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <> & <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "15m", dscr="1x5 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <> & <> & <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(5),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "16m", dscr="1x6 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <> & <> & <> & <>
      \end{bmatrix}<>
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

s({trig = "21m", dscr="2x1 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> \\
        <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "31m", dscr="3x1 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> \\
        <> \\
        <>
      \end{bmatrix}<>
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

s({trig = "41m", dscr="4x1 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> \\
        <> \\
        <> \\
        <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "51m", dscr="5x1 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> \\
        <> \\
        <> \\
        <> \\
        <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(5),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "61m", dscr="6x1 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> \\
        <> \\
        <> \\
        <> \\
        <> \\
        <>
      \end{bmatrix}<>
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

s({trig = "22m", dscr="2x2 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> \\
        <> & <>
      \end{bmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "33m", dscr="3x3 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <> \\
        <> & <> & <> \\
        <> & <> & <>
      \end{bmatrix}<>
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

s({trig = "44m", dscr="4x4 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <> & <> \\
        <> & <> & <> & <> \\
        <> & <> & <> & <> \\
        <> & <> & <> & <>
      \end{bmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4),
      i(5), i(6), i(7), i(8),
      i(9), i(10), i(11), i(12),
      i(13), i(14), i(15), i(16),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "55m", dscr="5x5 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <>
      \end{bmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4), i(5),
      i(6), i(7), i(8), i(9), i(10),
      i(11), i(12), i(13), i(14), i(15),
      i(16), i(17), i(18), i(19), i(20),
      i(21), i(22), i(23), i(24), i(25),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "66m", dscr="6x6 matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{bmatrix}
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <>
      \end{bmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4), i(5), i(6),
      i(7), i(8), i(9), i(10), i(11), i(12),
      i(13), i(14), i(15), i(16), i(17), i(18),
      i(19), i(20), i(21), i(22), i(23), i(24),
      i(25), i(26), i(27), i(28), i(29), i(30),
      i(31), i(32), i(33), i(34), i(35), i(36),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "11p", dscr="1x1 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "12p", dscr="1x2 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "13p", dscr="1x3 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <>
      \end{pmatrix}<>
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

s({trig = "14p", dscr="1x4 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <> & <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "15p", dscr="1x5 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <> & <> & <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(5),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "16p", dscr="1x6 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <> & <> & <> & <>
      \end{pmatrix}<>
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

s({trig = "21p", dscr="2x1 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> \\
        <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "31p", dscr="3x1 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> \\
        <> \\
        <>
      \end{pmatrix}<>
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

s({trig = "41p", dscr="4x1 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> \\
        <> \\
        <> \\
        <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "51p", dscr="5x1 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> \\
        <> \\
        <> \\
        <> \\
        <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(5),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "61p", dscr="6x1 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> \\
        <> \\
        <> \\
        <> \\
        <> \\
        <>
      \end{pmatrix}<>
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

s({trig = "22p", dscr="2x2 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> \\
        <> & <>
      \end{pmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "33p", dscr="3x3 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <> \\
        <> & <> & <> \\
        <> & <> & <>
      \end{pmatrix}<>
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

s({trig = "44p", dscr="4x4 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <> & <> \\
        <> & <> & <> & <> \\
        <> & <> & <> & <> \\
        <> & <> & <> & <>
      \end{pmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4),
      i(5), i(6), i(7), i(8),
      i(9), i(10), i(11), i(12),
      i(13), i(14), i(15), i(16),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "55p", dscr="5x5 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <>
      \end{pmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4), i(5),
      i(6), i(7), i(8), i(9), i(10),
      i(11), i(12), i(13), i(14), i(15),
      i(16), i(17), i(18), i(19), i(20),
      i(21), i(22), i(23), i(24), i(25),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "66p", dscr="6x6 parenthesis matrix", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{pmatrix}
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <>
      \end{pmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4), i(5), i(6),
      i(7), i(8), i(9), i(10), i(11), i(12),
      i(13), i(14), i(15), i(16), i(17), i(18),
      i(19), i(20), i(21), i(22), i(23), i(24),
      i(25), i(26), i(27), i(28), i(29), i(30),
      i(31), i(32), i(33), i(34), i(35), i(36),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "11v", dscr="1x1 determinant", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{vmatrix}
        <>
      \end{vmatrix}<>
    ]],
    {
      i(1),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "22v", dscr="2x2 determinant", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{vmatrix}
        <> & <> \\
        <> & <>
      \end{vmatrix}<>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(4),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "33v", dscr="3x3 determinent", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{vmatrix}
        <> & <> & <> \\
        <> & <> & <> \\
        <> & <> & <>
      \end{vmatrix}<>
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

s({trig = "44v", dscr="4x4 determinant", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{vmatrix}
        <> & <> & <> & <> \\
        <> & <> & <> & <> \\
        <> & <> & <> & <> \\
        <> & <> & <> & <>
      \end{vmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4),
      i(5), i(6), i(7), i(8),
      i(9), i(10), i(11), i(12),
      i(13), i(14), i(15), i(16),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "55v", dscr="5x5 determinant", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{vmatrix}
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <>
      \end{vmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4), i(5),
      i(6), i(7), i(8), i(9), i(10),
      i(11), i(12), i(13), i(14), i(15),
      i(16), i(17), i(18), i(19), i(20),
      i(21), i(22), i(23), i(24), i(25),
      i(0),
    }
  ),
  {condition = in_mathzone}
),

s({trig = "66v", dscr="6x6 determinant", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \begin{vmatrix}
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <> \\
        <> & <> & <> & <> & <> & <>
      \end{vmatrix}<>
    ]],
    {
      i(1), i(2), i(3), i(4), i(5), i(6),
      i(7), i(8), i(9), i(10), i(11), i(12),
      i(13), i(14), i(15), i(16), i(17), i(18),
      i(19), i(20), i(21), i(22), i(23), i(24),
      i(25), i(26), i(27), i(28), i(29), i(30),
      i(31), i(32), i(33), i(34), i(35), i(36),
      i(0),
    }
  ),
  {condition = in_mathzone}
),
}
