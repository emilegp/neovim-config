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

local line_begin = require("luasnip.extras.expand_conditions").line_begin

local not_in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 0
end

return {
s({trig = "sec", dscr="Top-level section", snippetType="autosnippet"},
  fmta(
    [[
      \section{<>}

      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig = "sub", dscr="subsection header", snippetType="autosnippet"},
  fmta(
    [[
      \subsection{<>}

      <>
    ]],

    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="ssub", dscr="subsubsection header", snippetType="autosnippet"},
  fmta(
    [[
      \subsubsection{<>}

      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="it", dscr="itemize environment", snippetType="autosnippet"},
  fmta(
    [[
      \begin{itemize}
        \item <>
      \end{itemize}
      
      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="fi", dscr="figure environmennt", snippetType="autosnippet"},
  fmta(
    [[
      \begin{figure}[H]
        \centering
        \includegraphics[scale=0.5]{<>}
        \caption{<>}
        \label{<>}
      \end{figure}

      <>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="mm", dscr="inline math mode", snippetType="autosnippet"},
  fmta(
    [[
      $<>$ <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = not_in_mathzone}
),

s({trig="mu", dscr="math equation but unnumbered", snippetType="autosnippet"},
  fmta(
    [[
      \[<>\] <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = not_in_mathzone}
),
}
